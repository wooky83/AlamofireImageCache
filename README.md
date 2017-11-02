# AlamofireImageCache
AlamofireImage + File Cache

Framework Alamofire
Framework AlamofireImage

AlamofireImage에 File Cache 할 수 있는 Method 추가
기본적으로 Temporary Folder에 저장하며 url.absoluteString 기준 identifier 한다.


## Usage

```swift

let bgBtn = UIButton()
bgBtn.af_setBackgroundImageCache(for: .normal, url: URL(string: "http://imgUrl")!)

let imgBtn = UIButton()
imgBtn.af_setImageCache(for: .normal, url: URL(string: "http://imgUrl")!)

let imgView = UIImageView()
imgView.af_setImageCache(withURL: URL(string: "http://imgUrl")!)

```
