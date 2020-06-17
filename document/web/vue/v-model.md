### v-model
>[https://juejin.im/post/5b5c2d986fb9a04f897840ac#comment](https://juejin.im/post/5b5c2d986fb9a04f897840ac#comment)

#### 父子组件自定义双向v-model  （单个）
* 子组件
```
// 绑定
  model: {
    prop: 'msg', // 这个字段，是指父组件设置 v-model 时，将变量值传给子组件的 msg
    event: 'parent-event'// 这个字段，是指父组件监听 parent-event 事件
  },
// 传递
this.$emit('parent-event', 传递的值)

```
* 父组件
```
<my-select v-model="moneyMsg" />
// 每次点击 子组件 父组件绑定的属性对应改变
```
#### 需要绑定多个双向属性
* sync 
* 子组件
```
// 绑定
  props: {
    areaMsg: {
      type: String,
      default () {
        return []
      }
    },
  }
 // 传递
this.$emit('update:areaMsg', 传递的值)
```
* 父组件
```
<children :areaMsg.sync="parentMsg"></children>
//子组件修改 父组件parentMsg也会对应修改
```