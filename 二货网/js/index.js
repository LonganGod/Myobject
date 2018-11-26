var navList = document.querySelectorAll('.nav ul li');
var goodsList = document.querySelectorAll('.goods .goods_content');
var pageList;
var goodsPage;
var activeID;

for (var i = 0; i < goodsList.length; i++) {
    goodsList[i].index = i;

    if (goodsList[i].className == 'goods_content active clearfix') {

        activeID = goodsList[i].id;
        pageList = document.getElementById(activeID).querySelectorAll('.page_list li');
        goodsPage = document.getElementById(activeID).querySelectorAll('.goods_list');
    }
}

for (var i = 0; i < pageList.length; i++) {
    pageList[i].index = i;

    pageList[i].onclick = function () {
        for (var j = 0; j < pageList.length; j++) {
            pageList[j].className = '';
            goodsPage[j].className = 'goods_list none clearfix';
        }
        
        this.className = 'active';

        var num = this.index;
        goodsPage[num].className = 'goods_list active clearfix';
    }

}

for (var i = 0; i < navList.length; i++) {
    navList[i].index = i;
    
    navList[i].onclick = function () {
        for (var j = 0; j < navList.length; j++) {
            navList[j].className = '';
            goodsList[j].className = 'goods_content none clearfix';
        }
        
        this.className = 'active';

        var num = this.index;
        goodsList[num].className = 'goods_content active clearfix';

        activeID = goodsList[num].id;
        pageList = document.getElementById(activeID).querySelectorAll('.page_list li');
        goodsPage = document.getElementById(activeID).querySelectorAll('.goods_list');

        for (var m = 0; m < pageList.length; m++) {
            pageList[m].index = m;
        
            pageList[m].onclick = function () {
                for (var n = 0; n < pageList.length; n++) {
                    pageList[n].className = '';
                    goodsPage[n].className = 'goods_list none clearfix';
                }
                
                this.className = 'active';
        
                var num = this.index;
                goodsPage[num].className = 'goods_list active clearfix';
            }
            
        }

        return false;
    }
}