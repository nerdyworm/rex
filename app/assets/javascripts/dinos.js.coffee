$ ->
  documentId = $("#document").data("id")

  $("[name=toggle-sortable]").click ->
    if $(this).is(":checked")
       $(".sortable").sortable("option", "disabled", false ).addClass("enabled")
    else
       $(".sortable").sortable("option", "disabled", true ).removeClass("enabled")

  $(".sortable").sortable
    disabled: true
    placeholder: "placeholder"
    stop: ->
      dinos = {}
      $(".dino").each (index) -> 
        id = $(this).data('id')
        dinos[id] = index

      $.ajax
        url: "/documents/#{documentId}/order_dinos"
        type: 'POST'
        dataType: 'json'
        data: dinos: dinos
