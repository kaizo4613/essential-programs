---
---

#$(window).scroll () ->
#    $("#toc-container").css("top", Math.max(40, 100 - $(this).scrollTop()))

$(document).ready () ->
    sections = $(".page-side__toc ul > li > ul")
    $(".page-side__toc ul > li > span").click (event) ->
        $(event.target).parent().find(sections).toggleClass('selected')

        if($(".page-side__credits").hasClass('marginleft260'))
            $(".page-side__credits").css({"position": "relative"}).animate({"right": "-=340px"}, 50, () ->
                $(this).removeClass('marginleft260'))
        else
            $(".page-side__credits").css({"position": "relative"}).animate({"right": "+=340px"}, 50, () ->
                $(this).addClass('marginleft260'))
          #$(".page-side__credits").css({"position": "relative"}).animate({"right": '340px'})

    $(".page-side__toc ul > li > span").hover (event) ->
        if($(".page-side__credits").hasClass('marginleft260'))
            $(".page-side__credits").css({"position": "relative"}).animate({"right": "-=340px"}, 50, () ->
                $(this).removeClass('marginleft260'))
        else
            $(".page-side__credits").css({"position": "relative"}).animate({"right": "+=340px"}, 50, () ->
                $(this).addClass('marginleft260'))
