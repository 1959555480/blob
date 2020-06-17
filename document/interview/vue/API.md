# API

## v-for 的 key 作用

* 提升性能，在 Vue 中是使用一套虚拟 DOM 来操作节点，使我们能数据驱动，而不去操作 DOM 节点，而在这其中使用的 diff 算法，需要我们提供 key 来给每个节点做一个唯一的标志，高效更新虚拟 DOM。

## sync 作用 

* 修饰符 实现双向绑定

## 组件通信
* props / $emit
* provide / inject
* ref / refs
* eventBus
* Vuex
* localStorage / sessionStorage
* $attrs与 $listeners
## 未完待续
