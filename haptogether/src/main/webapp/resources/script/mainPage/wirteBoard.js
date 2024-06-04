/////////////////////////////////////////////////////
// previewStyle
// tab : markdown, wysiwyg 중 하나만 보여주기
// vertical : 둘 다 보여주기

// initialEditType
// 에디터 타입 결정 (markdown, wysiwyg)
/////////////////////////////////////////////////////
window.addEventListener("load", function () {
    const { Editor } = toastui;
    const { colorSyntax } = Editor.plugin;

    const editor = new toastui.Editor({
    el: document.querySelector('#textEditor'),
    // height: '300px',
    // initialValue: "",
    placeholder: "내용을 입력해 주세요.",
    previewStyle: 'tab',
    initialEditType: 'wysiwyg',
    plugins: [colorSyntax],
    toolbarItems: [
        ['heading', 'bold', 'italic', 'strike'],
        ['ul', 'ol'],
        ['image', 'link']
    ]
  });
})
/////////////////////////////////////////////////////


// 추가 버튼 클릭 이벤트
window.addEventListener("load", function() {
    document.querySelector("#addRoleButton").addEventListener("click", function() {
        let roleOl = document.querySelector(".role ol")
        let newLi = document.createElement("li")
        let newDiv = document.createElement("div")
        let newInput = document.createElement("input")
        newInput.setAttribute("type", "text")
        newInput.setAttribute("name", "role")
        let newButton = document.createElement("button")
        newButton.setAttribute("type", "button")
        newButton.setAttribute("class", "deleteRole")
        newButton.innerText = "삭제"
        roleOl.appendChild(newLi)
        newLi.appendChild(newDiv)
        newDiv.appendChild(newInput)
        newDiv.appendChild(newButton)

        // css height 늘리기
        console.log("setRoles의 높이", document.querySelector(".setRoles").clientHeight)
        let originHeight = document.querySelector(".setRoles").clientHeight
        console.log("setRoles div의 높이", document.querySelector(".setRoles div").clientHeight)
        let plusHeight = document.querySelector(".setRoles div").clientHeight
        console.log(originHeight+plusHeight)
        let addHeight = originHeight+plusHeight+10  // 10은 padding 더한것
        document.querySelector(".setRoles").style.cssText = "height: " + addHeight + "px;"
    })

    // 삭제 버튼 이벤트 (이벤트 버블링)(이벤트 위임)
    document.querySelector(".role").addEventListener("click", function(e) {
        console.log("e.target : ", e.target)
        console.log("e.target.className : ", e.target.className)
        console.log("e.target.parentNode : ", e.target.parentNode)
        console.log("e.target.parentNode.parentNode : ", e.target.parentNode.parentNode)
        console.log("e.currentTarget : ", e.currentTarget)
        console.log("e.currentTarget.parentNode : ", e.currentTarget.parentNode)
        if(e.target.className === 'deleteRole') {
            console.log(e.currentTarget.parentNode.clientHeight)
            let originHeight = e.currentTarget.parentNode.clientHeight
            console.log(e.currentTarget.clientHeight)
            let minusHeight = e.currentTarget.clientHeight
            console.log(originHeight-minusHeight-10)
            let addHeight = originHeight-minusHeight-10
            e.target.parentNode.parentNode.remove()
            e.currentTarget.parentNode.style.cssText = "height: " + addHeight + "px;"
        }
    })
})