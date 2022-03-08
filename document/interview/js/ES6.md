---
issueId: 228
---
# ES6 test

## 扁平化 flat

* 参数 depth 

> 默认值为1  Infinity 展开任意深度的嵌套数组

* 使用

``` 
let arr = [1,2,3,[4,5,6,[7,8,9]]]
arr = arr.flat(infinity)  // [1,2,3,4,5,6,7,8,9] 等同arr.flat(2)

```
<Vssue title="Hello, Vssue!" :options="{ locale: 'zh' }" />
