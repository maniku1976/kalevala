$(document).ready(function() {



    /* Clicking actions in Simple pages page menus: hide/show */

    $('#julkaisu-nav1').on('click',function() {
      $('#julkaisutiedot').hide();
      $('#julkaisu-editio').show();
      $('#julkaisu-osat').hide();
      $('#julkaisu-osat-2').hide();
      $('#julkaisu-osat-3').hide();            
      $('#julkaisu-ajatus').hide();
    });

    $('#julkaisu-nav2').on('click',function() {
      $('#julkaisutiedot').hide();
      $('#julkaisu-editio').hide();
      $('#julkaisu-osat').show();
      $('#julkaisu-osat-2').hide();
      $('#julkaisu-osat-3').hide();            
      $('#julkaisu-ajatus').hide();
    });

    $('#julkaisu-nav3').on('click',function() {
      $('#julkaisutiedot').hide();
      $('#julkaisu-editio').hide();
      $('#julkaisu-osat').hide();
      $('#julkaisu-osat-2').hide();
      $('#julkaisu-osat-3').hide();            
      $('#julkaisu-ajatus').show();
    });

    $('#julkaisu-nav4').on('click',function() {
      $('#julkaisutiedot').show();
      $('#julkaisu-editio').hide();
      $('#julkaisu-osat').hide();
      $('#julkaisu-osat-2').hide();
      $('#julkaisu-osat-3').hide();            
      $('#julkaisu-ajatus').hide();
    });

    $('#julkaisu-nav5').on('click',function() {
      $('#julkaisutiedot').hide();
      $('#julkaisu-editio').hide();
      $('#julkaisu-osat').hide();
      $('#julkaisu-osat-2').show();
      $('#julkaisu-osat-3').hide();      
      $('#julkaisu-ajatus').hide();
    });

    $('#julkaisu-nav6').on('click',function() {
      $('#julkaisutiedot').hide();
      $('#julkaisu-editio').hide();
      $('#julkaisu-osat').hide();
      $('#julkaisu-osat-2').hide();
      $('#julkaisu-osat-3').show();            
      $('#julkaisu-ajatus').hide();
    });


    $('#esipuhe-link').find('a').on('click', function() {
      $('#esipuhe-submenu').show();
      $('#esipuhe-intro').show();
      $('#esipuhe-erot').hide();
      $('#esipuhe-aani').hide();
      $('#esipuhe-lajina').hide();
    });

    $('#esipuhe-submenu1').find('a').on('click', function() {
      $('#esipuhe-lajina').show();
      $('#esipuhe-intro').hide();
      $('#esipuhe-erot').hide();
      $('#esipuhe-aani').hide();
    });

    $('#esipuhe-submenu2').find('a').on('click', function() {
      $('#esipuhe-aani').show();
      $('#esipuhe-lajina').hide();
      $('#esipuhe-erot').hide();
      $('#esipuhe-intro').hide();
    });

    $('#esipuhe-submenu3').find('a').on('click', function() {
      $('#esipuhe-erot').show();
      $('#esipuhe-aani').hide();
      $('#esipuhe-lajina').hide();
      $('#esipuhe-intro').hide();
    });


    $('#tekstit-link').find('a').on('click', function() {
      $('#esipuhe-content').hide();
      $('#esipuhe-intro').hide();
      $('#tekstit-list').show();
    });

    $('#geneettinen-link').find('a').on('click', function() {
        $('#geneettinen-submenu').show();
        $('#geneettinen-esittely').show();
        $('#geneettinen-versiot').hide();
        $('#geneettinen-vertailu').hide();
        $('#geneettinen-content').hide();
        $('#geneettinen-content-2').hide();
        $('#yleisesittely').hide();
        $('#temaattinen-esittely').hide();
        $('#temaattinen-toimitustavat').hide();
        $('#temaattinen-lyriikka').hide();
        $('#temaattinen-haat').hide();
        $('#temaattinen-sammot').hide();
        $('#temaattinen-maailmansynty').hide();
        $('#kielellinen-submenu').hide();
        $('#kielellinen-esittely').hide();
        $('#kielellinen-suomi').hide();
        $('#kielellinen-periaatteet').hide();
        $('#traditio-esittely').hide();
        $('#traditio-skvr').hide();
        $('#traditio-content').hide();
        $('#traditio-content-2').hide();
        $('#aatehistoriallinen-esittely').hide();
        $('#aatehistoriallinen-kansa').hide();
        $('#aatehistoriallinen-perhe').hide();
        $('#aatehistoriallinen-kehys').hide();
        $('#aatehistoriallinen-tulkinnat').hide();
        $('#traditio-submenu').hide();
        $('#temaattinen-submenu').hide();
        $('#aatehistoriallinen-submenu').hide();
        $('#temaattinen-valmistuminen').hide();
        $('#kielellinen-lonnrot').hide();
        $('#kielellinen-piirteet').hide();
        $('#traditio-saetk').hide();
        $('#traditio-kantel').hide();
        $('#ainolemm-submenu').hide();
        $('#ainolemm-aino').hide();
        $('#ainolemm-lemminkainen').hide();
        $('#kullervo-submenu1').hide();
        $('#kullervo').hide();
    });

    $('#geneettinen-submenu2').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').show();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#geneettinen-submenu3').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').show();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#geneettinen-submenu4').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').show();
      $('#geneettinen-content-2').show();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#traditio-link').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-submenu').show();
      $('#traditio-content').show();
      $('#traditio-content-2').show();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide()
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-submenu').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#geneettinen-submenu').hide();
      $('#temaattinen-submenu').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').show();
      $('#kullervo').hide();
    });

    $('#traditio-submenu1').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').show();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').hide();
    });

    $('#traditio-submenu2').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').show();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').hide();
    });

    $('#traditio-submenu3').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').show();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').hide();
    });

    $('#traditio-submenu4').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').show();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').hide();
    });

    $('#kielellinen-link').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-submenu').show();
      $('#kielellinen-esittely').show();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#traditio-submenu').hide();
      $('#temaattinen-submenu').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#geneettinen-submenu').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#kielellinen-submenu1').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').show();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#kielellinen-submenu2').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').show();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#kielellinen-submenu3').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').show();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#kielellinen-submenu4').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide()
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').show();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-link').find('a').on('click', function() {
        $('#temaattinen-submenu').show();
        $('#temaattinen-esittely').show();
        $('#temaattinen-lyriikka').hide();
        $('#temaattinen-haat').hide();
        $('#temaattinen-toimitustavat').hide();
        $('#temaattinen-maailmansynty').hide();
        $('#geneettinen-esittely').hide();
        $('#geneettinen-content').hide();
        $('#geneettinen-content-2').hide();
        $('#geneettinen-versiot').hide();
        $('#geneettinen-vertailu').hide();
        $('#yleisesittely').hide();
        $('#kielellinen-submenu').hide();
        $('#kielellinen-esittely').hide();
        $('#kielellinen-suomi').hide();
        $('#kielellinen-periaatteet').hide();
        $('#aatehistoriallinen-esittely').hide();
        $('#aatehistoriallinen-kansa').hide();
        $('#aatehistoriallinen-perhe').hide();
        $('#aatehistoriallinen-kehys').hide();
        $('#traditio-content').hide();
        $('#traditio-content-2').hide();
        $('#traditio-esittely').hide();
        $('#traditio-skvr').hide();
        $('#traditio-submenu').hide();
        $('#geneettinen-submenu').hide();
        $('#aatehistoriallinen-submenu').hide();
        $('#temaattinen-sammot').hide();
        $('#aatehistoriallinen-tulkinnat').hide();
        $('#temaattinen-valmistuminen').hide();
        $('#kielellinen-lonnrot').hide();
        $('#kielellinen-piirteet').hide();
        $('#traditio-saetk').hide();
        $('#traditio-kantel').hide();
        $('#ainolemm-submenu').hide();
        $('#ainolemm-aino').hide();
        $('#ainolemm-lemminkainen').hide();
        $('#kullervo-submenu1').hide();
        $('#kullervo').hide();
    });

    $('#temaattinen-submenu2').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').show();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-submenu3').find('a').on('click', function() {
      $('#temaattinen-lyriikka').show();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-submenu4').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#temaattinen-haat').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').show();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-submenu5').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#temaattinen-haat').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').show();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-submenu6').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-maailmansynty').show();
      $('#temaattinen-haat').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#temaattinen-submenu7').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#temaattinen-haat').show();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });    

    $('#aatehistoriallinen-link').find('a').on('click', function() {
        $('#aatehistoriallinen-submenu').show();
        $('#aatehistoriallinen-esittely').show();
        $('#aatehistoriallinen-kansa').hide();
        $('#aatehistoriallinen-perhe').hide();
        $('#aatehistoriallinen-kehys').hide();
        $('#temaattinen-esittely').hide();
        $('#temaattinen-lyriikka').hide();
        $('#temaattinen-haat').hide();
        $('#temaattinen-maailmansynty').hide();
        $('#temaattinen-toimitustavat').hide();
        $('#geneettinen-esittely').hide();
        $('#geneettinen-content').hide();
        $('#geneettinen-content-2').hide();
        $('#geneettinen-versiot').hide();
        $('#geneettinen-vertailu').hide();
        $('#yleisesittely').hide();
        $('#kielellinen-submenu').hide();
        $('#kielellinen-esittely').hide();
        $('#kielellinen-suomi').hide();
        $('#kielellinen-periaatteet').hide();
        $('#traditio-content').hide();
        $('#traditio-content-2').hide();
        $('#traditio-esittely').hide();
        $('#traditio-skvr').hide();
        $('#traditio-submenu').hide();
        $('#temaattinen-submenu').hide();
        $('#geneettinen-submenu').hide();
        $('#temaattinen-sammot').hide();
        $('#aatehistoriallinen-tulkinnat').hide();
        $('#temaattinen-valmistuminen').hide();
        $('#kielellinen-lonnrot').hide();
        $('#kielellinen-piirteet').hide();
        $('#traditio-saetk').hide();
        $('#traditio-kantel').hide();
        $('#ainolemm-submenu').hide();
        $('#ainolemm-aino').hide();
        $('#ainolemm-lemminkainen').hide();
        $('#kullervo-submenu1').hide();
        $('#kullervo').hide();
    });

    $('#aatehistoriallinen-submenu1').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kehys').show();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#aatehistoriallinen-submenu2').find('a').on('click', function() {
      $('#temaattinen-lyriikka').hide();
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').show();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#aatehistoriallinen-submenu3').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').show();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#aatehistoriallinen-submenu4').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').show();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-submenu').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#ainolemm-link').find('a').on('click', function() {
      $('#ainolemm-submenu').show();
      $('#ainolemm-aino').show();
      $('#ainolemm-lemminkainen').hide();
      $('#yleisesittely').hide();
      $('#traditio-submenu').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide()
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-submenu').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#geneettinen-submenu').hide();
      $('#temaattinen-submenu').hide();
      $('#aatehistoriallinen-submenu').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#kullervo-submenu1').hide();
      $('#kullervo').hide();
    });

    $('#ainolemm-submenu1').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-aino').show();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').hide();
    });

    $('#ainolemm-submenu2').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').show();
      $('#kullervo').hide();
    });

    $('#kullervo-submenu1').find('a').on('click', function() {
      $('#yleisesittely').hide();
      $('#temaattinen-esittely').hide();
      $('#temaattinen-toimitustavat').hide();
      $('#temaattinen-lyriikka').hide();
      $('#temaattinen-haat').hide();
      $('#temaattinen-maailmansynty').hide();
      $('#geneettinen-content').hide();
      $('#traditio-content').hide();
      $('#traditio-content-2').hide();
      $('#traditio-esittely').hide();
      $('#traditio-skvr').hide();
      $('#geneettinen-esittely').hide();
      $('#geneettinen-versiot').hide();
      $('#geneettinen-vertailu').hide();
      $('#geneettinen-content').hide();
      $('#geneettinen-content-2').hide();
      $('#kielellinen-esittely').hide();
      $('#kielellinen-suomi').hide();
      $('#kielellinen-periaatteet').hide();
      $('#aatehistoriallinen-esittely').hide();
      $('#aatehistoriallinen-kansa').hide();
      $('#aatehistoriallinen-perhe').hide();
      $('#aatehistoriallinen-kehys').hide();
      $('#temaattinen-sammot').hide();
      $('#aatehistoriallinen-tulkinnat').hide();
      $('#temaattinen-valmistuminen').hide();
      $('#kielellinen-lonnrot').hide();
      $('#kielellinen-piirteet').hide();
      $('#traditio-saetk').hide();
      $('#traditio-kantel').hide();
      $('#ainolemm-aino').hide();
      $('#ainolemm-lemminkainen').hide();
      $('#kullervo').show();
    });

    $('#geneettinen-more').on('click', function() {
      if ($('#geneettinen-content-2').is(':hidden')) {
        $('#geneettinen-content-2').show();
      } else {
        $('#geneettinen-content-2').hide();
      }
    });

    $('#kaukonen-more').on('click', function() {
      if ($('#traditio-content-2').is(':hidden')) {
        $('#traditio-content-2').show();
      } else {
        $('#traditio-content-2').hide();
      }
    });

    // header poem menu, mouse click navigation
    $('#runot-nav').find('li').eq(0).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).show();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(1).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).show();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(2).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).show();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(3).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).show();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(4).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).show();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(5).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).show();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(6).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).show();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(7).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).show();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(8).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).show();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(9).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).show();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(10).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).show();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(11).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).show();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(12).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).show();
      $(this).parent().parent().parent().next().find('ul').eq(13).hide();
    });

    $('#runot-nav').find('li').eq(13).find('a').click(function() {
      $(this).parent().parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().parent().next().find('ul').eq(13).show();
    });

     // header poem menu, enter navigation
     $('#runot-nav').find('li').eq(0).keypress(function(e) { 
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).show();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(1).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).show();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(2).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).show();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(3).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).show();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(4).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).show();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(5).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).show();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(6).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).show();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(7).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).show();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(8).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).show();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(9).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).show();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(10).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).show();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(11).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).show();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(12).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).show();
      $(this).parent().parent().next().find('ul').eq(13).hide();
      }
    });

    $('#runot-nav').find('li').eq(13).keypress(function(e) {
      if(e.which == 13) {
      $(this).parent().parent().next().find('ul').eq(0).hide();
      $(this).parent().parent().next().find('ul').eq(1).hide();
      $(this).parent().parent().next().find('ul').eq(2).hide();
      $(this).parent().parent().next().find('ul').eq(3).hide();
      $(this).parent().parent().next().find('ul').eq(4).hide();
      $(this).parent().parent().next().find('ul').eq(5).hide();
      $(this).parent().parent().next().find('ul').eq(6).hide();
      $(this).parent().parent().next().find('ul').eq(7).hide();
      $(this).parent().parent().next().find('ul').eq(8).hide();
      $(this).parent().parent().next().find('ul').eq(9).hide();
      $(this).parent().parent().next().find('ul').eq(10).hide();
      $(this).parent().parent().next().find('ul').eq(11).hide();
      $(this).parent().parent().next().find('ul').eq(12).hide();
      $(this).parent().parent().next().find('ul').eq(13).show();
      }
    });

    /* popup comments, show extended description */

    $('.more').on('click', function() {
     $('#show_col_3').css('padding','1em');
     $('#show_col_3').html($(this).parent().next().html());
     $('#switchImg').hide();
     $('#show_col_3').html($('#show_col_3').html().replace('Mythologia Fennica','<em>Mythologia Fennica</em>'));
     /* find and replace SKVR references with links to SKVR */
     $.each(skvr, function(key, value) {
      var after = $('#show_col_3').html().indexOf(key) + key.length;
      var pos_after = $('#show_col_3').html().charAt(after);
      var before = $('#show_col_3').html().indexOf(key) - 1;
      var pos_before = $('#show_col_3').html().charAt(before);
      var regex = new RegExp(key, 'gi');
      if ((pos_before == ' ' || pos_before == '(' || pos_before == ';') && (pos_after == ' ' || pos_after == ';' || pos_after == ',' || pos_after == ')' 
      || pos_after == ':' || pos_after == '.')) {
        $('#show_col_3').html($('#show_col_3').html().replace(regex,'<a href="' + value + '" target="_blank">' + key + '</a>')); 
      }
     });
    });

    
    /* show longer commentaries in third column, mouse button */
    $('.tooltp2').on('click', function() {
     $('#show_col_3').css('padding','1em');
     $('#show_col_3').html($(this).next('.value3').html());
     $.each(skvr, function(key, value) {
        var after = $('#show_col_3').html().indexOf(key) + key.length;
        var pos_after = $('#show_col_3').html().charAt(after);
        var before = $('#show_col_3').html().indexOf(key) - 1;
        var pos_before = $('#show_col_3').html().charAt(before);
        var regex = new RegExp(key, 'gi');
        if ((pos_before == ' ' || pos_before == '(' || pos_before == ';') && (pos_after == ' ' || pos_after == ';' || pos_after == ',' || pos_after == ')' 
        || pos_after == ':' || pos_after == '.')) {
          $('#show_col_3').html($('#show_col_3').html().replace(regex,'<a href="' + value + '" target="_blank">' + key + '</a>')); 
        }
      });
      $('#show_col_3').find('a.tooltp').each(function() {
        $(this).hover(function() {
          $(this).next('.value1').css('margin-left','-20px');
        });
      });
    });

    /* show longer commentaries in third column, enter */
    $('.tooltp2').on('keypress', function(e) {
      if(e.which == 13) {
      $('#show_col_3').css('padding','1em');
      $('#show_col_3').html($(this).next('.value3').html());
      $.each(skvr, function(key, value) {
         var after = $('#show_col_3').html().indexOf(key) + key.length;
         var pos_after = $('#show_col_3').html().charAt(after);
         var before = $('#show_col_3').html().indexOf(key) - 1;
         var pos_before = $('#show_col_3').html().charAt(before);
         var regex = new RegExp(key, 'gi');
         if ((pos_before == ' ' || pos_before == '(' || pos_before == ';') && (pos_after == ' ' || pos_after == ';' || pos_after == ',' || pos_after == ')' 
         || pos_after == ':' || pos_after == '.')) {
           $('#show_col_3').html($('#show_col_3').html().replace(regex,'<a href="' + value + '" target="_blank">' + key + '</a>')); 
         }
       });
       $('#show_col_3').find('a.tooltp').each(function() {
         $(this).hover(function() {
           $(this).next('.value1').css('margin-left','-20px');
         });
       });
      }
     });    


    /* Dynamically add SKVR links from skvr.js to commentary texts shown in 3rd column, mouse button */
    $('.tooltp3').on('click', function() {
     $('#show_col_3').css('padding','1em');
     $('#show_col_3').html($(this).next('.value3').html());
     $.each(skvr, function(key, value) {
        var after = $('#show_col_3').html().indexOf(key) + key.length;
        var pos_after = $('#show_col_3').html().charAt(after);
        var before = $('#show_col_3').html().indexOf(key) - 1;
        var pos_before = $('#show_col_3').html().charAt(before);
        var regex = new RegExp(key, 'gi');
        if ((pos_before == ' ' || pos_before == '(' || pos_before == ';') && (pos_after == ' ' || pos_after == ';' || pos_after == ',' || pos_after == ')' 
        || pos_after == ':' || pos_after == '.')) {
          $('#show_col_3').html($('#show_col_3').html().replace(regex,'<a href="' + value + '" target="_blank">' + key + '</a>')); 
        }
      });
    });

      /* Dynamically add SKVR links from skvr.js to commentary texts shown in 3rd column, enter */
      $('.tooltp3').on('keypress', function(e) {
        if(e.which == 13) {
        $('#show_col_3').css('padding','1em');
        $('#show_col_3').html($(this).next('.value3').html());
        $.each(skvr, function(key, value) {
           var after = $('#show_col_3').html().indexOf(key) + key.length;
           var pos_after = $('#show_col_3').html().charAt(after);
           var before = $('#show_col_3').html().indexOf(key) - 1;
           var pos_before = $('#show_col_3').html().charAt(before);
           var regex = new RegExp(key, 'gi');
           if ((pos_before == ' ' || pos_before == '(' || pos_before == ';') && (pos_after == ' ' || pos_after == ';' || pos_after == ',' || pos_after == ')' 
           || pos_after == ':' || pos_after == '.')) {
             $('#show_col_3').html($('#show_col_3').html().replace(regex,'<a href="' + value + '" target="_blank">' + key + '</a>')); 
           }
         });
        }
       });  

    /* show/hide popup comments and links for longer commentaries in third column, mouse button */
    $('#pic_nav1').find('input').on('click',function() {
      if ($(this).is(':checked')) {
        $('.tooltp').css('background-color','rgba(205, 161, 191, 0.7)');
      } else {
        $('.tooltp').css('background-color','#fff');
      }
    });

    $('#pic_nav2').find('input').on('click',function() {
      if ($(this).is(':checked')) {
        $('.tooltp3').show();

      } else {
        $('.tooltp3').hide();
      }
    });

    $('#pic_nav3').find('input').on('click',function() {
      if ($(this).is(':checked')) {
        $('.tooltp2').show();

      } else {
        $('.tooltp2').hide();
      }
    });

        /* show/hide popup comments and links for longer commentaries in third column, enter */
        $('#pic_nav1').find('input').on('keypress',function(e) {
          if(e.which == 13) {
          if ($(this).is(':checked')) {
            $('.tooltp').css('background-color','#fff');
            $(this).prop('checked', false);
          } else {
            $('.tooltp').css('background-color','rgba(205, 161, 191, 0.7)');
            $(this).prop('checked', true);
          }
        }
        });
    
        $('#pic_nav2').find('input').on('keypress',function(e) {
          if(e.which == 13) {
          if ($(this).is(':checked')) {
            $('.tooltp3').hide();
            $(this).prop('checked', false);
          } else {
            $('.tooltp3').show();
            $(this).prop('checked', true);
          }
        }
        });
    
        $('#pic_nav3').find('input').on('keypress',function(e) {
          if(e.which == 13) {
          if ($(this).is(':checked')) {
            $('.tooltp2').hide();
            $(this).prop('checked', false);
          } else {
            $('.tooltp2').show();
            $(this).prop('checked', true);
          }
        }
        });

    $('.resultsBtn').on('click',function() {
      if ($(this).parent().next('.hl').is(":visible")) {
        $(this).parent().next().hide();
      } else {
        $(this).parent().next('.hl').show();
        $(this).parent().next('.hl').find('li:contains("Kommentaarit")').first().css('margin-top','1em');
      }
    });

    $('.result-header:contains("Kirjallisuus")').find('.resultsBtn').on('click',function() {
      if ($(this).parent().parent().next('.hl').is(":visible")) {
        $(this).parent().parent().next().hide();
      } else {
        $(this).parent().parent().next('.hl').show();
        $(this).parent().parent().next('.hl').find('li:contains("Kommentaarit")').first().css('margin-top','1em');
      }
    });

    // Show/hide items in collections on front pages, mouse click
    $('.coll_title').on('click',function() {
      if ($(this).next('.coll_items').find('ul').is(':visible')) {
        $(this).next('.coll_items').find('ul').hide();
      } else {
        $(this).next('.coll_items').find('ul').show();
      }
    });

    $('.coll-more').on('click',function() {
      if ($(this).parent().parent().next('div').is(':visible')) {
        $(this).parent().parent().next('div').hide();
      } else {
        $(this).parent().parent().next('div').show();
      }
    });

    // Show/hide items in collections on front pages, enter
    $('.coll_title').on('keypress',function(e) {
      if (e.which == 13) {
        if ($(this).next('.coll_items').find('ul').is(':visible')) {
          $(this).next('.coll_items').find('ul').hide();
        } else {
          $(this).next('.coll_items').find('ul').show();
        }
      }
    });

    $('.coll-more').on('keypress',function(e) {
      if (e.which == 13) {
        if ($(this).parent().parent().next('div').is(':visible')) {
          $(this).parent().parent().next('div').hide();
        } else {
          $(this).parent().parent().next('div').show();
        }
      }
    });
});
