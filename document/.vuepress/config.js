module.exports = {
    title: 'yyx的博客',
    description: '寻几处好景破星光。',
    dest: '/usr/share/nginx/html/dist',
    head: [
        // 添加百度统计
        [
            "script",
            {},
            `
      var _hmt = _hmt || [];
      (function() {
        var hm = document.createElement("script");
        hm.src = "https://hm.baidu.com/hm.js?44212d6ce872df50b804d94b24889284";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
      })();
        `
        ]
    ],
    themeConfig: {
        nav: [
            { text: "主页", link: "/" },
            {
                text: "前端web",
                items: [{
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
                items: [{
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
                items: [{
                    text: 'HTTP/TCP',
                    link: "/computer/compute/"
                }]
            },
            {
                text: "面试",
                items: [{
                        text: 'HTML 汇总',
                        link: "/interview/html/基础"
                    },
                    {
                        text: 'css 汇总',
                        link: "/interview/css/基础"
                    },
                    {
                        text: 'js 汇总',
                        link: "/interview/js/基础"
                    },
                    {
                        text: 'vue 汇总',
                        link: "/interview/vue/概念"
                    },
                    {
                        text: '其他',
                        link: "/interview/other/浏览器"
                    },
                ]
            },
            {
                text: "其他",
                items: [{
                        text: '正则',
                        link: "/other/reg/base/基础"
                    },
                    {
                        text: '工具网站',
                        link: "/other/website/网站"
                    },
                ]
            }
        ],
        sidebar: {
            '/web/vue/': [
                '',
                'v-model',
                'Vue-router',
                'Vue-vuex',
            ],
            '/interview/vue/': [
                '概念',
                'API',
                '原理',
            ],
            '/interview/js/': [
                '基础',
                'ES6',
                '异步',
            ],
            '/interview/html/': [
                '基础',
                '扩展',
            ],
            '/interview/css/': [
                '基础',
            ],
            '/interview/other/': [
                '浏览器',
            ],
            '/other/reg/base/': [
                '基础',
            ],
            '/other/website/': [
                '网站',
            ]
        },
    },
}