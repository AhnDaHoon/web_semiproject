var xhr = null;

function getXMLHttpRequest(){
    // MS 브라우저
    if(window.ActiveXObject){
        try{
            return new ActiveXObject("MsMXL2.XMLHttp");
        }catch (e){
            try {
            return new ActiveXObject("Microsoft.XMLHttp");
            } catch (e) {
                null;
            }
        }
    }else if(window.XMLHttpRequest){
        // 그 외 브라우저 라면
        return new XMLHttpRequest();
    }else {
        return null;
    }
}// getXMLHttpRequest() end