module.exports = {
  title: 'yyx的博客',
  description: '想避世。更要在世上。',
  themeConfig: {
    nav: [
      { text: "主页", link: "/" },
      {
        text: "前端web",
        items:[
          {
            text: 'HTML',
            link: "/web/html/"
          },
          {
            text: 'CSS',
            link: "/web/css/"
          },
          {
            text: 'JavaScript',
            link: "/web/javascript/"
          },
          {
            text: 'Vue',
            link: "/web/vue/"
          },
        ]
      },
      {
        text: "后端node",
        items:[
          {
            text: 'egg',
            link: "/node/egg/"
          },
          {
            text: 'koa',
            link: "/node/koa/"
          },
        ]
      },
      {
        text: "计算机网络",
        items:[
          {
            text: 'HTTP/TCP',
            link: "/computer/compute/"
          }
        ]
      },
      {
        text: "面试",
        items:[
          {
            text: '面试1',
            link: "/interview/html/"
          },
          {
            text: '面试2',
            link: "/interview/js/"
          },
          {
            text: '面试3',
            link: "/interview/css/"
          },
          {
            text: '面试4',
            link: "/interview/vue/"
          },
        ]
      },
    ],
    sidebar: 'auto',
  },
}