# Anaesthesia Guide - Flutter App

Oxford Handbook of Anaesthesia 5e 的 Flutter App 版本。

## 功能

- 42 個章節完整內容
- 搜尋功能
- 深色主題
- Markdown 格式呈現

## 快速開始

```bash
cd anaesthesia_guide
flutter pub get
flutter run
```

## 建構 Web 版本

```bash
flutter build web
```

## 專案結構

```
lib/
  main.dart              # App 入口
  models/
    chapter.dart         # 章節資料模型
  screens/
    home_screen.dart     # 首頁（章節列表）
    chapter_screen.dart  # 章節內容頁
  utils/
    content_loader.dart  # 內容載入工具
assets/
  CH01_*.md - CH42_*.md  # 章節內容檔案
```

## TODO

- [ ] 加入書籤功能
- [ ] 加入 offline 支援
- [ ] 加入調整字體大小功能
- [ ] 加入藥物劑量計算機
