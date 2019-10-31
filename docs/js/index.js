// service worker
if (typeof navigator.serviceWorker !== 'undefined') {
    navigator.serviceWorker.register('sw.js')
}

// config
window.$docsify = {
    name: 'flutter UI',
    repo: 'https://github.com/flutter-jp/flutter-ui',
    // logo:'assets/images/avatar.png',
    coverpage: true,
    loadSidebar: true,
    subMaxLevel: 3,
    // copyCode: {
    //     buttonText: 'Copy to clipboard',
    //     errorText: 'Error',
    //     successText: 'Copied'
    // },
    formatUpdated: '{YYYY}-{MM}-{DD}',
    alias: {
        '/.*/_sidebar.md': '/_sidebar.md'
    },
    auto2top: true,
    homepage: 'README.md',
    mergeNavbar: true,
    search: {
        maxAge: 86400000, // 过期时间，单位毫秒，默认一天
        placeholder: 'Search...',
        noData: 'No Result!'
    },
    plugins: [
        EditOnGithubPlugin.create('https://github.com/flutter-jp/flutter-ui/blob/master/docs/'),
        function (hook, vm) {
            hook.beforeEach(function (html) {
                return html
                    + '<hr/>'
                    + 'Last Update：{docsify-updated} '
            })
        },
        function (hook, vm) {
            hook.mounted(function () {
                var div = Docsify.dom.create('div');
                div.id = 'gitalk-container';
                var main = Docsify.dom.getNode('#main');
                div.style = `width: ${main.clientWidth}px; margin: 0 auto 20px;`;
                Docsify.dom.appendTo(Docsify.dom.find('.content'), div)
            });
            hook.doneEach(function () {
                var el = document.getElementById('gitalk-container');
                while (el.hasChildNodes()) el.removeChild(el.firstChild);
                gitalk.render('gitalk-container')
            })
        }
    ]
};

// git talk
const gitalk = new Gitalk({
    clientID: 'Iv1.921d3627ee94994c',
    clientSecret: 'afb80e1e4d60a398b54f4ea038a62f18157787c5',
    repo: 'flutter-ui',
    owner: 'ricoh-houko',
    admin: ['ricoh-houko,houko'],
    distractionFreeMode: false,
    id: decodeURI(location.pathname),
});
