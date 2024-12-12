# DatabaseINT2211

## Mô tả các Bảng

Dưới đây là mô tả chi tiết về các bảng trong cơ sở dữ liệu, bao gồm tên bảng, mô tả và các thuộc tính:

### a. Artist (Nghệ sĩ)
  * **Mô tả:** Lưu trữ thông tin về nghệ sĩ hoặc ban nhạc.
  * **Thuộc tính:**
    *   `ArtistId` (Khóa chính)
    *   `Name` (Tên nghệ sĩ hoặc ban nhạc)

### b. Album (Album)
  * **Mô tả:** Lưu trữ thông tin về các album âm nhạc.
  * **Thuộc tính:**
    *   `AlbumId` (Khóa chính)
    *   `Title` (Tên album)
    *   `ArtistId` (Khóa ngoại, tham chiếu đến bảng `Artist`)

### c. Track (Bài hát)
  * **Mô tả:** Lưu thông tin về các bài hát trong các album.
  * **Thuộc tính:**
    *   `TrackId` (Khóa chính)
    *   `Name` (Tên bài hát)
    *   `AlbumId` (Khóa ngoại, tham chiếu đến bảng `Album`)
    *   `MediaTypeId` (Khóa ngoại, tham chiếu đến bảng `MediaType`)
    *   `GenreId` (Khóa ngoại, tham chiếu đến bảng `Genre`)
    *   `Composer` (Người sáng tác bài hát)
    *   `Milliseconds` (Thời gian bài hát)
    *   `Bytes` (Kích thước bài hát)
    *   `UnitPrice` (Giá mỗi bài hát)

### d. Genre (Thể loại)
  * **Mô tả:** Lưu trữ các thể loại âm nhạc.
  * **Thuộc tính:**
    *  `MediaType` (Khóa chính)
    *   `Name` (Tên thể loại)

### e. Customer (Khách hàng)
  * **Mô tả:** Lưu thông tin về khách hàng.
  * **Thuộc tính:**
    *   `CustomerId` (Khóa chính)
    *   `FirstName` (Tên khách hàng)
    *   `LastName` (Họ khách hàng)
    *   `Company`
    *   `Address` (Địa chỉ)
    *   `City` (Thành phố)
    *   `State`
    *   `Country` (Quốc gia)
    *   `PostalCode` (Mã bưu điện)
    *   `Phone` (Số điện thoại)
    *   `Fax` (Số fax của khách hàng)
    *   `Email` (Email khách hàng)
    *   `SupportRepld` (Khóa ngoại, tham chiếu đến `Employee`)

### f. Invoice (Hóa đơn)
  * **Mô tả:** Lưu trữ thông tin về các hóa đơn của khách hàng.
  * **Thuộc tính:**
    *   `InvoiceId` (Khóa chính)
    *   `CustomerId` (Khóa ngoại, tham chiếu đến bảng `Customer`)
    *   `InvoiceDate` (Ngày tạo hóa đơn)
    *   `BillingAddress` (Địa chỉ thanh toán)
    *   `BillingCity` (Thành phố của địa chỉ thanh toán)
    *   `BillingState` (Tiểu bang của địa chỉ thanh toán)
    *   `BillingCountry` (Quốc gia của địa chỉ thanh toán)
    *   `BillingPostalCode` (Mã bưu điện của địa chỉ thanh toán)
    *   `Total` (Tổng số tiền trong hóa đơn)

### g. InvoiceLine (Chi tiết hóa đơn)
  * **Mô tả:** Lưu trữ chi tiết các bài hát được mua trong hóa đơn.
  * **Thuộc tính:**
    *   `InvoiceLineId` (Khóa chính)
    *   `InvoiceId` (Khóa ngoại, tham chiếu đến bảng `Invoice`)
    *   `TrackId` (Khóa ngoại, tham chiếu đến bảng `Track`)
    *   `UnitPrice` (Giá của bài hát)
    *   `Quantity` (Số lượng bài hát)

### h. MediaType (Định dạng âm nhạc)
  * **Mô tả:** Lưu trữ các loại định dạng âm nhạc (ví dụ: MP3, WAV, v.v.)
  * **Thuộc tính:**
    *   `MediaTypeId` (Khóa chính)
    *   `Name` (Tên định dạng)

### i. Playlist (Danh sách phát)
  * **Mô tả:** Lưu trữ các danh sách phát nhạc mà khách hàng có thể tạo ra
  * **Thuộc tính:**
    *   `PlaylistId` (Khóa chính)
    *   `Name` (Tên danh sách phát)

### k. PlaylistTrack (Danh sách phát)
  * **Mô tả:** Lưu trữ thông tin về mối quan hệ giữa `Playlist` và `Track`
  * **Thuộc tính:**
    *   `PlaylistId` (Khóa ngoại, tham chiếu đến `PlaylistId` trong bảng `Playlist`)
    *   `TrackId` (Khóa ngoại, tham chiếu đến `TrackId` trong bảng `Track`)

### l. Employee (Nhân viên)
  * **Mô tả:** Lưu trữ thông tin về các nhân viên của công ty
  * **Thuộc tính:**
    *   `EmployeeId` (Khóa chính)
    *   `LastName` (Họ nhân viên)
    *   `FirstName` (Tên nhân viên)
    *   `Title` (Chức danh)
    *   `ReportsTo` (Khóa ngoại, tham chiếu đến `EmployeeId`)
    *   `BirthDate` (Ngày sinh)
    *   `HireDate` (Ngày tuyển dụng)
    *   `Address` (Địa chỉ)
    *   `City` (Thành phố)
    *   `State` (Tiểu bang)
    *   `Country` (Quốc gia)
    *   `PostalCode` (Mã bưu điện)
    *   `Phone` (Số điện thoại)
    *   `Fax` (Số fax)
    *   `Email` (Email nhân viên)
  
  *   **Lưu ý:** Khóa ngoại tự tham chiếu trong bảng `Employee`, nơi cột `ReportsTo` tham chiếu đến cột `EmployeeId` của chính bảng đó. Điều này có nghĩa là mỗi nhân viên có thể báo cáo cho một nhân viên khác trong cùng bảng `Employee`.

## Các Luồng Công Việc (Workflow)

Dưới đây là mô tả các luồng công việc chính trong hệ thống:

### 1. Quản lý Album và Bài hát (Track)
  * **Luồng công việc:** Mỗi bài hát (Track) thuộc về một album (Album) và có thể được bán cho khách hàng.
    * **Các bước:**
        1. **Tạo Album:** Album được tạo ra với các thuộc tính như tên album và `ArtistId` để liên kết với nghệ sĩ.
        2. **Tạo Bài hát:** Mỗi bài hát (track) thuộc về một album và có các thuộc tính như tên bài hát, `MediaTypeId` (liên kết với loại định dạng), `GenreId` (liên kết với thể loại nhạc), và các chi tiết như `Composer`, `Milliseconds`, `Bytes`, `UnitPrice`.
        3. **Liên kết MediaType và Genre:** Bài hát được gán một loại định dạng (ví dụ: MP3, WAV) qua `MediaTypeId` và một thể loại âm nhạc (ví dụ: Pop, Rock) qua `GenreId`.

### 2. Quản lý Playlist và PlaylistTrack
  * **Luồng công việc:** Người dùng có thể tạo các playlist và thêm bài hát vào playlist của mình.
    * **Các bước:**
        1. **Tạo Playlist:** Một playlist mới được tạo với tên playlist và `PlaylistId`.
        2. **Thêm Bài hát vào Playlist:** Các bài hát (tracks) được thêm vào playlist qua bảng `PlaylistTrack`, liên kết giữa `PlaylistId` và `TrackId`.

### 3. Quản lý Khách hàng (Customer)
  * **Luồng công việc:** Khách hàng tạo tài khoản, xem danh sách bài hát và thực hiện các giao dịch mua.
    * **Các bước:**
        1. **Tạo Khách hàng:** Một khách hàng mới được tạo trong hệ thống với các thông tin cá nhân (tên, địa chỉ, email, v.v.).
        2. **Khách hàng thực hiện mua sắm:** Khách hàng chọn các bài hát và album để mua. Các thông tin giao dịch được ghi lại trong bảng `Invoice`.
        3. **Liên kết Hóa đơn với Khách hàng:** Mỗi hóa đơn trong bảng `Invoice` được liên kết với một `CustomerId`.

### 4. Quản lý Hóa đơn và InvoiceLine
  * **Luồng công việc:** Mỗi giao dịch mua của khách hàng tạo ra một hóa đơn và các chi tiết về bài hát được mua sẽ được ghi trong `InvoiceLine`.
    * **Các bước:**
        1. **Tạo Hóa đơn:** Khi khách hàng thanh toán, một hóa đơn được tạo ra trong bảng `Invoice` và liên kết với khách hàng qua `CustomerId`.
        2. **Ghi nhận chi tiết bài hát trong hóa đơn:** Các bài hát mà khách hàng đã mua sẽ được ghi lại trong bảng `InvoiceLine` với các thông tin như `TrackId`, `Quantity`, và `UnitPrice`.

### 5. Quản lý Nhân viên (Employee)
  * **Luồng công việc:** Nhân viên hỗ trợ khách hàng và quản lý các hóa đơn, cũng có thể báo cáo lên các cấp trên.
    * **Các bước:**
        1. **Tạo Nhân viên:** Nhân viên được tạo trong hệ thống với các thông tin cá nhân (tên, chức vụ, địa chỉ, v.v.).
        2. **Quản lý Khách hàng:** Nhân viên có thể hỗ trợ khách hàng qua email hoặc điện thoại và quản lý các giao dịch.
        3. **Báo cáo Nhân viên:** Một số nhân viên có thể báo cáo lên cấp trên, điều này được ghi lại trong trường `ReportsTo` của bảng `Employee`.

### 6. Quản lý các Mối Quan Hệ (Relationships)
  * **Luồng công việc:** Các mối quan hệ giữa các thực thể như `Artist`, `Album`, `Track`, `Customer`, `Invoice`, `Playlist`, `Employee` được quản lý qua các khóa ngoại.
    * **Các bước:**
        1. **Liên kết Artist với Album:** Một nghệ sĩ có thể có nhiều album, được ghi trong bảng `Album` qua `ArtistId`.
        2. **Liên kết Album với Track:** Mỗi album có nhiều bài hát, mỗi bài hát liên kết với một album qua `AlbumId`.
        3. **Liên kết Playlist với Track:** Mỗi playlist có thể chứa nhiều bài hát, được ghi trong bảng `PlaylistTrack`.
        4. **Liên kết Customer với Invoice:** Mỗi hóa đơn được tạo cho một khách hàng, ghi trong bảng `Invoice` qua `CustomerId`.
        5. **Liên kết Invoice với InvoiceLine:** Mỗi hóa đơn có thể chứa nhiều dòng chi tiết sản phẩm, được lưu trong bảng `InvoiceLine`.
