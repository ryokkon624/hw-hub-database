# HwHub Database（hw-hub-database）

Housework Hub（HwHub）の **DB スキーマ管理リポジトリ**です。  
MySQL（Docker）上で開発・検証できるようにしつつ、Flyway によって **スキーマ差分をコードとして管理**します。

---

## 当リポジトリの役割

- **Flyway マイグレーション**（スキーマ作成・変更）
- **開発/テスト用のテストデータ投入**（任意）
- **SchemaSpy による ER 図 / スキーマドキュメント生成**（build 配下に出力）

---

## 技術スタック（DB）

- MySQL 8.x（Docker / docker compose）
- Flyway（Gradle plugin）
- SchemaSpy（Gradle task で出力）

---

## ディレクトリ構成（主要）

```
hw-hub-database/
├── flyway/
│   ├── sql/        # 本番相当のマイグレーション（スキーマ差分）
│   └── sql-test/   # 開発・テスト限定のデータ投入（任意、seedDevData で適用）
├── build/
│   └── schemaspy/  # SchemaSpy の出力（生成物）
└── gradle/
    └── wrapper/
```

> `.gradle/` や `build/` は生成物・キャッシュです（コミット対象外）。

---

## よく使うコマンド

### 1) MySQL（Docker）を起動

プロジェクトルートで：

```bash
docker compose up -d
```

停止する場合：

```bash
docker compose down
```

---

### 2) Flyway（スキーマ）を適用

`flyway/sql` にある **本番相当**のマイグレーションを適用します。

```bash
./gradlew flywayMigrate
```

---

### 3) 開発・テスト用データを投入（任意）

`flyway/sql-test` 配下の **開発・テスト用データ**を追加で適用します。

```bash
./gradlew seedDevData
```

このタスクは以下のように定義されています：

```gradle
tasks.register("seedDevData", org.flywaydb.gradle.task.FlywayMigrateTask) {
    group = "flyway"
    description = "Apply dev/test-only data migrations (flyway/sql-test)."
    dependsOn("flywayMigrate")
    locations = ["filesystem:flyway/sql-test"]
}
```

---

## マイグレーション運用ルール（Flyway）

- 変更は **必ず Flyway の SQL として追加**する（手動 ALTER のみで終わらせない）
- ファイル命名規約（例）
    - `V00_000_001__create_xxx.sql`
    - `V00_000_010__add_column_yyy.sql`
- 既存マイグレーションの「編集」は避け、原則 **新規ファイル追加**とする

---

## SchemaSpy（スキーマ可視化）

SchemaSpy の生成物は `build/schemaspy/` 以下に出力されます。

```bash
./gradlew schemaspy
```

- 出力場所：`build/schemaspy/`
- 生成した HTML をブラウザで開いて確認します

> ※ 実行タスク名はリポジトリの Gradle タスク定義に依存します。  
> もしタスク名が不明な場合は `./gradlew tasks` で確認してください。

---

## トラブルシュート

### Flyway が DB に接続できない

- Docker の MySQL が起動しているか確認：`docker ps`
- DB 接続情報（ホスト/ポート/DB名/ユーザー）が Gradle 設定と一致しているか確認

### seedDevData を実行してもデータが入らない

- `flyway/sql-test` の SQL が `V...__...sql` の形式になっているか確認
- 既に同じバージョンが適用済みだと再実行されないため、バージョンを進めてください

---

