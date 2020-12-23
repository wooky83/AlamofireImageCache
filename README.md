# AlamofireImageCache
AlamofireImage + File Cache


AlamofireImage에 File Cache 할 수 있는 Method 추가 :+1:<br/>
기본적으로 iOS Temporary Folder에 저장하며 url.absoluteString 기준 identifier 한다.
1. is Memory Cache 
2. is File Cache
3. urlRequest


## Usage

```swift

let bgBtn = UIButton()
bgBtn.af.setCacheImage(for: .normal, url: URL(string: "http://imgUrl")!)

let imgBtn = UIButton()
imgBtn.af.setCacheImage(for: .normal, url: URL(string: "http://imgUrl")!)

let imgView = UIImageView()
imgView.af.setCacheImage(withURL: URL(string: "http://imgUrl")!)

```
