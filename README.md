# SearXNG 搜索引擎

## 启动/停止

### Windows
```bash
# 启动
start.bat

# 停止
stop.bat
```

### Linux/Mac
```bash
# 启动
bash start.sh

# 停止
bash stop.sh
```

## API 使用示例

### 基本搜索（JSON 格式）

```bash
curl "http://127.0.0.1:38080/search?q=test&format=json"
```

### 中文搜索

```bash
# URL 编码方式
curl "http://127.0.0.1:38080/search?q=%E4%BB%8A%E5%A4%A9%E6%B7%B1%E5%9C%B3%E5%A4%A9%E6%B0%94%E5%A6%82%E4%BD%95&format=json"

# 或使用 --data-urlencode
curl -G "http://127.0.0.1:38080/search" \
  --data-urlencode "q=今天深圳天气如何" \
  --data-urlencode "format=json"
```

### 指定搜索引擎

```bash
# 只使用 Google
curl "http://127.0.0.1:38080/search?q=test&engines=google&format=json"

# 使用多个引擎
curl "http://127.0.0.1:38080/search?q=test&engines=google,bing&format=json"
```

