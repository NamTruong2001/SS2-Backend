insert into cosmetic_ecommerce.category (id, name) values ('1xdii4vkG0', 'Sữa Rửa Mặt');
insert into cosmetic_ecommerce.category (id, name) values ('8olHRA6VtL', 'Chăm sóc da mật');
insert into cosmetic_ecommerce.category (id, name) values ('9baOQdhkDG', 'Nước Tẩy Trang');
insert into cosmetic_ecommerce.category (id, name) values ('9Qpehd6JAH', 'Son môi');
insert into cosmetic_ecommerce.category (id, name) values ('BIhVbxbOc4', 'Serum');
insert into cosmetic_ecommerce.category (id, name) values ('HVgCJayyNN', 'Lăn nách');
insert into cosmetic_ecommerce.category (id, name) values ('JRHfjyi7B9', 'Kem Chống Nắng');
insert into cosmetic_ecommerce.category (id, name) values ('ncE3FRIUQk', 'Nước Hoa');
insert into cosmetic_ecommerce.category (id, name) values ('ONWqAEHwqB', 'minh_trb');
insert into cosmetic_ecommerce.category (id, name) values ('RBgtBciusR', 'Mặt nạ');
insert into cosmetic_ecommerce.category (id, name) values ('v6J2HUIr15', 'Chăm sóc tóc');
insert into cosmetic_ecommerce.category (id, name) values ('xMGgXMuWmo', 'Kem Dưỡng');

insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('0o9wgtoixV', '2023-04-30 00:02:55', 'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.', 'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới)
Gentle Skin Cleanser (New)', 329000, 98, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('46sCGqATA9', '2023-05-23 23:45:57', '1 sản phẩm đẹp', 'Cầu Đặc', 50000000, 100, 'ONWqAEHwqB');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('4c8AnAhOJG', '2023-05-23 21:20:44', 'To use flexbox gap for the spacing implementation, set the useFlexGap prop to true.  It removes the known limitations of the default implementation that uses CSS nested selector. However, CSS flexbox gap is not fully supported in some browsers.  We recommend checking the support percentage before using it.', 'Sản phẩm test 1', 32000, 100, 'ONWqAEHwqB');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('4IZ7OT7jTT', '2023-04-30 00:11:00', 'Sữa Rửa Mặt Simple Refreshing Facial Wash là sản phẩm sữa rửa mặt dạng gel dành cho mọi loại da nổi tiếng của thương hiệu mỹ phẩm Simple. Với công thức dịu nhẹ không chứa xà phòng cùng thành phần Pro-Vitamin B5 và Vitamin E, sản phẩm giúp làm sạch da hiệu quả, cuốn đi chất nhờn, bụi bẩn và các tạp chất khác mà không gây kích ứng, cho da mềm mịn, đồng thời mang lại cảm giác tươi mát và sạch thoáng cho da.', 'Sữa Rửa Mặt Simple Giúp Da Sạch Thoáng 150ml
Kind To Skin Refreshing Facial Wash Gel', 87000, 94, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('4txxTMnyBu', '2023-05-06 22:39:40', '', 'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+', 399000, 99, 'JRHfjyi7B9');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('5R53F9dVgN', '2023-04-30 00:03:43', 'Nước Tẩy Trang L''Oréal là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu L''Oreal Paris, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông thoáng, mềm mượt mà không hề khô căng.', 'Nước Tẩy Trang L''Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml
Micellar Water 3-in-1 Refreshing Even For Sensitive Skin', 159000, 99, '9baOQdhkDG');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('9jf3u6i0bm', '2023-04-07 10:58:21', 'If you are not getting any error message, it is possible that the validation is actually passing successfully.

You can add some logging statements in your code to check if the createComment object is being validated or not. You can add the following code snippet at the beginning of your create method:

less
Copy code
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

private static final Logger logger = LoggerFactory.getLogger(CommentController.class);

@PostMapping(value = "/create", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
@PreAuthorize("hasAuthority(''USER'')")
private ResponseEntity create(@Valid @ModelAttribute CommentCreation createComment,
                              @RequestParam("images") List<MultipartFile> images) {
    logger.debug("CommentCreation object received: {}", createComment);
    try {
        return ResponseEntity.ok(commentService.save(createComment, images));
    } catch (Exception e) {
        return ResponseEntity.badRequest().body(e.getMessage());
    }
}
This will log the createComment object received in your controller. You can check if the received object contains the expected values or not.

If you are still not able to find the issue, you can try disabling the @Valid annotation temporarily and check if you are able to receive the createComment object successfully.', 'Nước Hoa Le Labo 13 100ml Another Eau de Parfum Unisex', 699000, 143, 'ncE3FRIUQk');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('afcmXiVUWT', '2023-03-04 17:06:42', 'Bộ gội xả có hương thơm đặc trưng của gừng kết hợp với hương Vanilla ấm áp mang đến cảm giác thư giãn sau khi gội. Bên trong dầu gội gừng ngăn rụng tóc Weilaiya là những tép gừng tươi vàng sóng sánh

Các thành phần có trong dầu gội gừng Weilaiya

Chiết xuất gừng tươi Vân Nam: Ngăn rụng tóc gấp 3 lần gừng thông thường
Hyaluronic Acid: Hấp thụ nước gấp 1000 lần, giữ nước và dưỡng ẩm cho da
Tocopherol: Chính là Vitamin E, có khả năng chống oxy hóa mạnh, làm chậm quá trình lão hóa của da đầu', 'Bộ Dầu Gội Xả Chiết Xuất Gừng Weilaiya Ginger Shampoo & Conditioner (tặng set mini Weilaiya)', 324000, 85, 'v6J2HUIr15');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('Aff3I9DxX0', '2023-04-30 00:09:32', 'Tinh chất cấp ẩm cho da nhạy cảm Rich Moist Soothing Serum đến từ thương hiệu mỹ phẩm Dear, Klairs là sản phẩm tinh chất (serum) giúp cung cấp độ ẩm chuyên sâu dành cho tình trạng da khô mất nước, giúp da trở nên căng mọng ngay tức thì, đồng thời hỗ trợ làm dịu mát da, xoa dịu mẩn đỏ và hỗ trợ ngăn ngừa các dấu hiệu lão hóa.', 'Serum Klairs Cấp Ẩm Cho Da Khô, Nhạy Cảm 80ml
Rich Moist Soothing Serum', 276000, 100, 'BIhVbxbOc4');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('Al2fwjVbcv', '2023-03-04 16:55:33', 'Kem Ủ Tóc Boya Q10 là sản phẩm thuộc thương hiệu BOYA từ công ty Karmart Thái Lan. Tất cả công nghệ và thành phần trong sản phẩm đều được chuyển giao từ Hàn Quốc. Các tiêu chuẩn an toàn quốc tế như GMP hay FDA đều được ứng dụng.

Nhắc tới Karmart thì không người dân Thái nào không biết và họ rất ưa chuộng các sản phẩm chăm sóc da, chăm sóc toàn thân và trang điểm của hàng vì tính đa dạng, an toàn và thân thiện với làn da.', 'Kem Ủ Tóc BOYA Hair Treatment Q10 500gr', 75000, 14, 'v6J2HUIr15');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('B9dpNp9HN5', '2023-03-02 16:19:19', 'Nước Hoa chính hãng chất lượng cao', 'Nước Hoa Hương Downy', 500000, 45, 'ncE3FRIUQk');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('bhsE3BRena', '2023-04-30 00:11:51', 'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp là dòng sữa rửa mặt đến từ thương hiệu mỹ phẩm Cosrx của Hàn Quốc, với độ pH lý tưởng 4.5 - 5.5 sản phẩm an toàn và dịu nhẹ trên mọi làn da ngay cả làn da nhạy cảm và da mụn. Gel rửa mặt chứa 0,5% BHA tự nhiên và chiết xuất tràm trà làm sạch sâu lỗ chân lông, hỗ trợ kháng khuẩn, làm sạch mụn đồng thời tẩy da chết nhẹ nhàng.', 'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp 150ml
Low pH Good Morning Gel Cleanser', 127000, 94, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('CdBlInu3d4', '2023-03-04 16:57:55', 'Thời tiết nóng bức của mùa hè ảnh hưởng trực tiếp đến sức khỏe mái tóc

Hơn nữa, cột tóc, búi tóc quá nhiều để tìm cảm giác mát mẻ trong mùa nóng cũng chính là nguyên nhân khiến mái tóc kém bồng bềnh.

Kem ủ tóc cao cấp Wellmate với thành phần protein, keratin và tinh dầu argan chính là giải pháp chăm sóc mái tóc chắc khỏe và mượt mà.

', 'Kem Ủ Tóc Cao Cấp Wellmate', 450000, 4, 'v6J2HUIr15');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('cGDSyzRW2W', '2023-05-06 22:48:09', 'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.  Được chứng minh lâm sàng có khả năng làm sạch sâu, loại bỏ hoàn toàn bụi bẩn, và tạp chất trên da một cách dịu nhẹ nhưng vẫn duy trì độ ẩm tự nhiên để bảo vệ da khỏi tình trạng khô ráp, Sữa Rửa Mặt Cetaphil Mới với công thức lành tính không gây kích ứng sẽ an toàn cho mọi loại da, kể cả da nhạy cảm.  Sữa Rửa Mặt Dịu Lành Cho Da Nhạy Cảm Cetaphil Gentle Skin Cleanser hiện đã có mặt tại Hasaki với 6 dung tích cho bạn lựa chọn:  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 59ml  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 125ml  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 250ml  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 473ml  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 500ml  Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser 1000ml', 'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới) Gentle Skin Cleanser (New)', 329000, 97, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('dsfsdffd', '2023-03-02 22:04:01', ' Thương hiệu mỹ phẩm NARUKO đến từ Đài Loan nổi tiếng với các dòng sản phẩm mặt nạ giấy dưỡng da được chiết xuất từ các thành phần thiên nhiên như Tràm Trà, Bạch Ngọc Lan, Ý Dĩ Nhân Đỏ, Hoa Hồng, Hoa Thủy Tiên... giúp dưỡng da chuyên sâu và hỗ trợ cải thiện các vấn đề về da khác nhau.

       Mặt Nạ NARUKO hiện đã có mặt tại Hasaki với các phân loại như sau cho bạn lựa chọn:

       Naruko Raw Job’s Tears Brightening Mask – Ý dĩ nhân đỏ sáng da mới – Mặt nạ se khít lỗ chân lông, sáng da

       Naruko RJT Pore Minimizing and Brightening Mask – Ý dĩ nhân đỏ – Mặt nạ se khít lỗ chân lông

       Naruko Narcissus Repairing Mask – Hoa thủy tiên – Mặt nạ tế bào gốc thực vật DNA phục hồi da

       Naruko Rose and BOTANIC HA Aqua Cubic Hydrating Mask EX – Hoa hồng nhung – Mặt nạ cấp nước

       Naruko Tea Tree Shine Control and Blemish Clear Mask – Trà tràm – Mặt nạ trà tràm kiểm soát dầu và mụn

       Naruko Taiwan Magnolia Brightening and Firming Mask EX – Bạch ngọc lan – Mặt nạ dưỡng sáng và săn chắc da', 'Hộp 8 Miếng Mặt Nạ Naruko Tràm Trà Kiềm Dầu Giảm Mụn 26ml/M
Tea Tree Shine Control and Blemish Clear Mask', 260000, 42, 'RBgtBciusR');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('eirVpG6qz8', '2023-03-02 21:04:29', 'Mặt Nạ Dưỡng Săn Chắc Da BNBG Vita Genic Jelly Mask 30ml

"Mặt nạ được xem như vị cứu tinh đối với làn da bạn". BNBG Vita Genic Jelly Mask chứa dưỡng chất Vitamin dạng gel đậm đặc, hàm lượng lên đến 20.000ppm được chiết xuất từ các trái cây tươi ở hòn đảo Jeju xinh đẹp. Mang đến làn da khỏe mạnh, bóng mượt đầy sức sống, phục hồi độ đàn hồi, ngăn ngừa quá trình lão hóa đồng thời cung cấp đủ ẩm cho da luôn mềm, mịn màng. Khi sử dụng BNBG Vita Genic Jelly Mask, bạn sẽ được trải nghiệm cảm giác thư giãn và sảng khoái.

BNBG được biết đến là một bệnh viện thẩm mỹ nổi tiếng với đội ngũ bác sĩ có tay nghề hàng đầu tại Hàn Quốc. Là bệnh viện ứng dụng các công nghệ hiện đại tại Châu Á để nghiên cứu ra các loại mỹ phẩm chăm sóc da cũng như các phương pháp phẫu thuật mới để mang lại vẻ đẹp hoàn thiện cho phụ nữ. Chương trình làm đẹp uy tín tại Hàn Quốc "Get It Beauty" đã đẩy cơn sốt mặt nạ jelly này lên đỉnh điểm khi có một chị da đẹp thật đẹp, căng mọng đã cho biết sử dụng mặt nạ này.', 'Mặt nạ dưỡng da NARUKO', 700000, 75, 'RBgtBciusR');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('eWHhzSPZn4', '2023-04-30 00:14:14', 'Kem Dưỡng Ẩm, Làm Dịu Da Ban Đêm Midnight Blue Calming Cream là kem dưỡng dành cho da nhạy cảm đến từ thương hiệu Dear, Klairs trực thuộc By Wishtrend. Với thành phần Guaiazulene được chiết xuất từ dầu hoa cúc tạo màu xanh dịu mát tự nhiên, giúp làm dịu da kích ứng vô cùng hiệu quả, kết hợp cùng chiết xuất rau má cấp ẩm, làm dịu da và hỗ trợ phục hồi da mụn rất tốt.', 'Kem Dưỡng Ẩm Klairs Làm Dịu & Phục Hồi Da Ban Đêm 60ml
Midnight Blue Calming Cream', 367000, 96, 'xMGgXMuWmo');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('FUBsefe43', '2023-03-11 23:56:18', 'Có trụ sở tại các Tiểu vương quốc Ả Rập thống nhất, bậc thầy mùi hương Armaf hiện nắm giữ hàng tá mùi hương khác nhau vô cùng nổi tiếng ở thị trường châu Âu và nhận được sự ưa chuộng của cả nam giới lẫn nữ giới. Giữ trong mình hương thơm đáng yêu, tinh tế tác hợp cùng hương trái cây gợi lên một mùa xuân ấm áp, dịu nhẹ và mát mẻ.

Được ra mắt vào năm 2015, Armaf Club De nuit Women là một kỳ công vang dội khi mang tới những mùi hương khẳng định đẳng cấp của sự xa xỉ, sang trọng đến với giới thượng lưu cũng như những người yêu thích nước hoa trên toàn thế giới.', 'Nước Hoa Armaf Club De Nuit Women EDP 105ml', 1300000, 10, 'ncE3FRIUQk');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('GlXVUzrPf2', '2023-04-30 00:07:34', 'Tinh Chất GoodnDoc Hydra B5 Serum là sản phẩm serum dưỡng da đến từ thương hiệu GoodnDoc của Hàn Quốc, chứa thành phần Pro-Vitamin B5 kết hợp cùng Hyaluronic Acid, Adenosine và Niacinamide giúp dưỡng ẩm chuyên sâu và hỗ trợ phục hồi làn da tổn thương, kích ứng. Giúp da luôn căng đầy sức sống, trẻ hóa và căng mịn da. Bảo vệ làn da của bạn khỏi cháy nắng, nám tàn nhang da. Phục hồi tăng cường độ đàn hồi cho da, giúp da khô ráp trở nên mịn màng và trẻ trung hơn.', 'Serum GoodnDoc Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da 30ml
Hydra B5 Serum', 348000, 100, 'BIhVbxbOc4');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('gSY0unVGhh', '2023-04-29 23:06:47', 'Sữa Rửa Mặt Cerave Sạch Sâu là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Cerave của Mỹ, với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.', 'Sữa Rửa Mặt CeraVe Cho Da Thường Đến Khô 473ml
Hydrating Cleanser', 355000, 99, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('K8BLdrr58I', '2023-03-27 10:00:39', 'Nước Hoa Hồng Obagi Clenziderm MD Pore Therapy là sản phẩm Toner chuyên biệt giúp làm sạch sâu lỗ chân lông và giảm nhờn, mụn đến từ thương hiệu dược mỹ phẩm Obagi Medical. Với hoạt chất chính là 2% Salicylic Acid (BHA), sản phẩm giúp lấy đi lượng tế bào chết làm tắc nghẽn lỗ chân lông, giúp da hấp thu hiệu quả các bước chăm sóc tiếp theo. Làn da được làm sạch sâu, thoáng nhẹ, đồng thời cải thiện tình trạng mụn và giúp lỗ chân lông nhỏ đi trông thấy.

Bảo quản:
Nơi khô ráo, thoáng mát tránh ánh nắng mặt trời và nhiệt độ cao.

Tránh xa tầm tay trẻ em.

Đậy nắp kín sau khi sử dụng.

Thông số sản phẩm:
Dung tích: 148ml

Thương hiệu: Obagi Medical

Xuất xứ thương hiệu: Mỹ

Nơi sản xuất: Mỹ', 'Nước Hoa Hồng Obagi BHA 2% Giảm Nhờn Mụn 148ml
Clenziderm MD Pore Therapy Salicylic Acid 2% Acne Treatment', 689000, 265, 'ncE3FRIUQk');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('kNKLovjTHf', '2023-04-30 00:13:09', 'Kem Dưỡng La Roche-Posay Cicaplast Baume B5 Soothing Repairing Balm là sản phẩm kem dưỡng dành cho da nhạy cảm đến từ thương hiệu La Roche-Posay, giúp dưỡng ẩm và làm dịu tình trạng da kích ứng, tổn thương, hỗ trợ phục hồi làn da. Sản phẩm được khuyên dùng sau các liệu trình điều trị thẩm mỹ & kích ứng da nhẹ ở người lớn, trẻ em và trẻ sơ sinh.', 'Kem Dưỡng La Roche-Posay Làm Dịu, Hỗ Trợ Phục Hồi Da 40ml
Cicaplast Baume B5 Soothing Repairing Balm', 292000, 97, 'xMGgXMuWmo');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('L2Ykh5Twzg', '2023-05-23 21:21:31', 'To extract the IDs of all objects in an array and store them in a new array, you can use the map() method. The map() method creates a new array by calling a provided function on each element of the original array.  Here''s an example of how you can extract the IDs of objects from an array and store them in a new array:  jsx Copy code const array = [   { id: "abc123", name: "Object 1" },   { id: "def456", name: "Object 2" },   { id: "ghi789", name: "Object 3" } ];  const idArray = array.map(obj => obj.id);  console.log(idArray); In the example above, the array contains objects with id properties. The map() method is used to iterate over the array and extract the id property from each object. The extracted IDs are then stored in the idArray variable.  The output of console.log(idArray) will be an array containing all the IDs extracted from the objects:  css Copy code ["abc123", "def456", "ghi789"] You can apply this logic to your specific array of objects by replacing array with your actual array variable name.', 'Thai Ng', 100000000, 96, 'ONWqAEHwqB');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('newsdsd', '2023-03-26 21:18:41', 'Ko có gì cả', 'new 2', 120000, 5, null);
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('NhDvPJvkRC', '2023-03-13 15:18:29', 'Mặt Nạ Tóc Cao Cấp Phục Hồi Hư Tổn TSUBAKI Premium Repair Mask đến từ thương hiệu chăm sóc tóc nổi tiếng TSUBAKI Nhật Bản mang đến trải nghiệm dưỡng tóc chuẩn Salon mà không mất thời gian chờ đợi, mái tóc suôn mượt và mềm mại với các thành phần giàu dưỡng chất và công thức phục hồi tiên tiến vượt bậc.

Hiện sản phẩm TSUBAKI Premium Repair Mask 180g đã có mặt tại Hasaki.', 'Mặt Nạ Tóc Tsubaki Cao Cấp Phục Hồi Hư Tổn 180g
Premium Repair Mask', 269000, 181, 'v6J2HUIr15');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('Niayrow9Th', '2023-04-30 00:10:19', 'Purifying Gel Wash là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Simple, giúp kiềm dầu, ngừa mụn cho da dầu dễ nổi mụn. Sản phẩm với chất gel thanh khiết, chứa chiết xuất Cây Phỉ (Witch Hazel), Kẽm, Prebiotic từ thực vật, Niacinamide (Vitamin B3) sẽ giúp cuốn đi bụi bẩn, tạp chất và dầu thừa, làm sạch da và giảm bóng nhờn, ngừa mụn hiệu quả.', 'Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml
Purifying Gel Wash', 94000, 98, '1xdii4vkG0');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('ObKzjdfXhZ', '2023-03-02 16:22:45', 'Nước Hoa xịn ', 'Nước Hoa Trường NN', 700000, 74, 'ncE3FRIUQk');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('qOozAthcv4', '2023-05-12 15:23:13', 'Mặt nạ dưỡng da Some By Mi Real Glutathione Britening Care Mask với thành phần Glutathione giúp dưỡng sáng da, đều màu da và hỗ trợ làm mờ các vết thâm trên da. Mặt nạ dành cho những làn da xỉn màu, không đều màu. ', '[DEAL 0Đ] Some By Mi Mặt nạ giấy Real Glutathione Brightening Care Mask 20g (IP04) ', 23000, 97, '8olHRA6VtL');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('sdfsdfsdf', '2023-03-02 22:04:01', 'Vớ vẩn 1', 'Vớ 1', 20000, 9, null);
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('SkdAd99Bm4', '2023-04-30 00:00:40', 'Kem Chống Nắng La Roche-Posay Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+ đến từ thương hiệu dược mỹ phẩm La Roche-Posay là sản phẩm kem chống nắng dành cho làn da dầu mụn, sở hữu công nghệ cải tiến XL-Protect cùng kết cấu kem gel dịu nhẹ & không nhờn rít, giúp ngăn ngừa tia UVA/UVB + tia hồng ngoại + tác hại từ ô nhiễm, bảo vệ toàn diện cho làn da luôn khỏe mạnh.', 'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml
Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+', 399000, 99, 'JRHfjyi7B9');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('TMl4XmCoiR', '2023-04-30 00:04:58', 'Tinh Chất Siêu Cấp Ẩm Sáng Da L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum là dòng sản phẩm serum đến từ thương hiệu L''Oréal Paris nổi tiếng của Pháp, với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt ở nồng độ 1.5% sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô & lão hóa, giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì. Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.', 'Serum L''Oreal Hyaluronic Acid Cấp Ẩm Sáng Da 30ml
Revitalift Hyaluronic Acid 1.5% Hyaluron Serum', 359000, 99, 'BIhVbxbOc4');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('wv5i1EpuKs', '2023-04-30 00:06:50', 'Timeless Vitamin B5 Serum là sản phẩm tinh chất (serum) dưỡng da đa công dụng đến từ thương hiệu Timeless nổi tiếng của Mỹ, với công thức lỏng nhẹ, không chứa dầu, giúp làm dịu và hỗ trợ phục hồi làn da đang gặp vấn đề. Công thức chứa thành phần Vitamin B5 có tác dụng thúc đẩy chữa lành các tổn thương do mụn, làm giảm mẩn đỏ và giảm thiểu sẹo, hỗ trợ khôi phục hàng rào bảo vệ tự nhiên của da. Kết hợp cùng thành phần Hyaluronic Acid cấp nước và cân bằng độ ẩm cho làn da sáng khỏe.', 'Serum Timeless Vitamin B5 Làm Dịu & Phục Hồi Da 30ml
Vitamin B5 Serum', 359000, 99, 'BIhVbxbOc4');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('xIRCvIkIPw', '2023-04-30 00:15:27', 'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo là sản phẩm chống nắng phiên bản mới nhất năm 2022 đến từ thương hiệu chống nắng dưỡng da ANESSA hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV & bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.', 'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml
Perfect UV Sunscreen Skincare Milk N SPF50+ PA++++', 459000, 95, 'JRHfjyi7B9');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('Xp5jCMsVLe', '2023-04-30 00:14:55', 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml là sản phẩm kem chống nắng đến từ thương hiệu mỹ phẩm Skin1004 của Hàn Quốc, là kem chống nắng vật lý với chiết xuất rau má và chất kem mỏng nhẹ có màu giúp che phủ nhẹ khuyết điểm cho da. Công thức đa năng vừa chống nắng vừa đều màu da lại dưỡng ẩm chính là sản phẩm mà những cô nàng da mụn hay da dầu nhạy cảm cần vì không cần sử dụng quá nhiều bước lỉnh kỉnh.', 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++', 267000, 93, 'JRHfjyi7B9');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('YaxBYgunjR', '2023-04-30 00:01:47', 'Nước Tẩy Trang Dành Cho Da Nhạy Cảm Bioderma Sensibio H2O là sản phẩm nước tẩy trang công nghệ Micellar đầu tiên trên thế giới, do thương hiệu dược mỹ phẩm Bioderma nổi tiếng của Pháp phát minh. Dung dịch giúp làm sạch sâu da và loại bỏ lớp trang điểm nhanh chóng mà không cần rửa lại bằng nước. Công thức dịu nhẹ, không kích ứng, không gây khô căng da, đặc biệt phù hợp với làn da nhạy cảm.', 'Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm 500ml
Sensibio H2O', 393000, 98, '9baOQdhkDG');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('zJ4rdxymQg', '2023-04-30 00:05:50', 'Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml là sản phẩm tinh chất đến từ thương hiệu Klairs của Hàn Quốc, tiếp thêm sinh lực trẻ hóa làn da với sức mạnh của 5% Vitamin C dạng Acid L-ascorbic nhẹ dịu; cùng chiết xuất Rau Má không gây kích ứng nhưng vẫn hiệu quả trong việc làm mờ các vết mụn và vết nám, cải thiện làn da xỉn và không đều màu', 'Serum Klairs Vitamin C Cho Da Nhạy Cảm 35ml
Freshly Juiced Vitamin Drop', 280000, 99, 'BIhVbxbOc4');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('zoiuv8krdt', '2023-03-13 15:33:21', 'Son Dưỡng Môi Mediheal 10ml là sản phẩm son dưỡng môi đến từ thương hiệu mỹ phẩm Mediheal của Hàn Quốc, chứa thành phần Dexpanthenol (tiền chất Vitamin B5), Vitamin B5, tinh chất cây tầm xuân, Ceramide cải thiện tình trạng khô ráp của môi giúp cho đôi môi trở nên mềm mại, cải thiện sắc tố môi, hạn chế các tế bào melanin làm môi trở nên thâm sạm môi, giúp môi sáng màu hơn.', 'Son Dưỡng Mediheal Hỗ Trợ Giảm Thâm Môi Ban Ngày 10ml
Labocare Pantenolips Healssence', 143000, 287, '9Qpehd6JAH');
insert into cosmetic_ecommerce.product (id, created_date, description, name, price, quantity, category_id) values ('zqcCS8MA0s', '2023-05-12 21:58:18', 'Không có gì', 'minh_tb', 12000, 100, '8olHRA6VtL');

insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('2VHhXj3WY0', '2023-03-02 22:44:20', 'Giảm giá', 10, '2023-03-05 05:04:01', '2023-03-01 22:04:01');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('fyVmFbjyUP', '2023-05-23 22:34:04', 'giảm giá test lần 2', 98, '2023-06-19 22:18:00', '2023-05-23 22:10:00');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('KQBoLBEt3M', '2023-03-10 10:05:58', 'Giảm giá', 40, '2023-09-12 22:04:01', '2023-03-09 22:04:01');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('LUN2Rz3DwE', '2023-05-23 23:14:01', 'Thêm 1 lần test nữa', 97, '2023-06-22 00:00:00', '2023-05-24 00:00:00');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('msWgBEHXPM', '2023-04-30 20:59:49', 'Giảm giá cho 1 số mặt hàng mới nổi gần đây', 10, '2023-05-30 22:04:01', '2023-03-01 22:04:01');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('new1', '2023-03-02 16:46:25', 'Gỉam giá cho nước hoa', 20, '2023-03-16 04:46:57', '2023-03-02 16:47:07');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('qa8IDziIZU', '2023-05-23 22:29:13', 'giảm giá test', 12, '2023-07-26 12:12:00', '2023-05-24 00:00:00');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('t2cKL9vr10', '2023-03-27 10:10:45', 'Giảm giá', 28, '2023-04-24 22:04:01', '2023-03-01 22:04:01');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('test2', '2023-03-02 23:34:00', 'Ko query', 34, '2023-08-26 00:12:18', '2023-08-01 20:34:31');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('truobf', '2023-05-22 15:31:58', 'Discount test', 10, '2023-07-22 15:32:25', '2023-05-31 15:32:14');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('xGXPQmveEn', '2023-03-05 09:08:42', 'Giảm giá', 20, '2023-03-11 22:04:01', '2023-03-01 22:04:01');
insert into cosmetic_ecommerce.discount (code, created_date, description, discount_percent, end_date, start_date) values ('Z3Ec5duEe9', '2023-03-13 15:22:01', 'Giảm giá cho 1 vài sản phẩm mặt nạ', 30, '2023-08-31 00:00:00', '2023-07-16 00:00:00');

insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (1, 40000, 'new1', 'B9dpNp9HN5');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (2, 234000, '2VHhXj3WY0', 'dsfsdffd');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (6, 360000, 'xGXPQmveEn', null);
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (7, 156000, 'KQBoLBEt3M', 'dsfsdffd');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (8, 12000, 'KQBoLBEt3M', 'sdfsdfsdf');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (9, 910000, 'Z3Ec5duEe9', 'FUBsefe43');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (10, 188300, 'Z3Ec5duEe9', 'NhDvPJvkRC');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (12, 84000, 'Z3Ec5duEe9', 'newsdsd');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (14, 14000, 'Z3Ec5duEe9', 'sdfsdfsdf');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (15, 496080, 't2cKL9vr10', 'K8BLdrr58I');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (16, 419400, 'KQBoLBEt3M', '9jf3u6i0bm');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (17, 413400, 'KQBoLBEt3M', 'K8BLdrr58I');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (18, 85800, 'KQBoLBEt3M', 'zoiuv8krdt');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (19, 413100, 'msWgBEHXPM', 'xIRCvIkIPw');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (20, 240300, 'msWgBEHXPM', 'Xp5jCMsVLe');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (29, 296100, '2VHhXj3WY0', '0o9wgtoixV');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (30, 78300, '2VHhXj3WY0', '4IZ7OT7jTT');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (31, 289520, 'qa8IDziIZU', '0o9wgtoixV');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (32, 28160, 'qa8IDziIZU', '4c8AnAhOJG');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (33, 76560, 'qa8IDziIZU', '4IZ7OT7jTT');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (34, 640, 'fyVmFbjyUP', '4c8AnAhOJG');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (35, 2000000, 'fyVmFbjyUP', 'L2Ykh5Twzg');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (36, 960, 'LUN2Rz3DwE', '4c8AnAhOJG');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (38, 600, 'LUN2Rz3DwE', 'sdfsdfsdf');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (39, 360, 'LUN2Rz3DwE', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.discount_product (id, discount_price, discount_id, product_id) values (40, 1000000, 'fyVmFbjyUP', '46sCGqATA9');


insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (34, '/images/well_mate.png', 'CdBlInu3d4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (35, '/images/well_mate2.png', 'CdBlInu3d4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (36, '/images/acda8979-0945-4cc4-864c-809553d71173.png', 'NhDvPJvkRC');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (37, '/images/35807fd8-b015-4d94-bcd9-4eb336f3fc6e.png', 'zoiuv8krdt');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (38, '/images/6e4f670d-9ef3-42d6-b95b-ded204e6a2e5.png', 'zoiuv8krdt');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (39, '/images/3de7b002-d6f1-4011-8c7a-cc79d6c9a1f9.jpeg', 'ObKzjdfXhZ');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (40, '/images/c0092a5a-3a2d-4361-b07a-df0fa64de8eb.png', 'ObKzjdfXhZ');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (42, '/images/obagi1.png', 'K8BLdrr58I');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (43, '/images/obagi2.png', 'K8BLdrr58I');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (50, '/images/1fb9d05b-07da-422e-a4b5-48f14b615636.jpeg', '9jf3u6i0bm');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (51, '/images/7028d7fd-064d-4595-9048-edbc22acd04d.png', '9jf3u6i0bm');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (52, '/images/well_mate2.png', 'B9dpNp9HN5');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (53, 'images/well_mate.png', 'B9dpNp9HN5');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (54, '/images/6a7d7b32-d504-4b27-a359-a7ab81defdc4.jpg', 'gSY0unVGhh');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (55, '/images/4dd98861-3dcd-41ca-8729-06aa5398d803.jpg', 'gSY0unVGhh');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (56, '/images/9671613f-a674-42fe-8d7a-aaf7cec17548.jpg', 'SkdAd99Bm4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (57, '/images/9eb39bd8-fc8d-4f1e-bdf2-400300f770c8.jpg', 'YaxBYgunjR');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (58, '/images/e2d6b6a6-fd06-4ce7-87a9-1620e61c8c30.jpg', '0o9wgtoixV');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (59, '/images/1c6626c5-6b38-4534-9783-07a8c29b3197.jpg', '5R53F9dVgN');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (60, '/images/8084eaa5-01bf-4cf6-9ed4-9422f2de4d24.jpg', 'TMl4XmCoiR');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (61, '/images/2b3c2307-f818-4e1b-87ac-a333c00b8984.jpg', 'zJ4rdxymQg');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (62, '/images/63f21373-16a7-46be-a374-59ef03fb6e47.jpg', 'wv5i1EpuKs');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (63, '/images/ccfcd8f2-bc34-416b-bf74-cec1bd0ba8f9.jpg', 'GlXVUzrPf2');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (64, '/images/43677272-6bef-4271-98e8-d866f7949892.jpg', 'Aff3I9DxX0');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (65, '/images/7433259e-d7a8-4e19-9914-c780301ccd09.jpg', 'Niayrow9Th');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (66, '/images/3be3418c-2df2-489f-a0d6-cfef459854de.jpg', '4IZ7OT7jTT');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (67, '/images/ac552e14-7b16-400e-b2a1-6299478c5ac5.jpg', 'bhsE3BRena');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (68, '/images/b841da3e-97e5-4b87-a53b-08118eaf5913.jpg', 'kNKLovjTHf');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (69, '/images/a24f21b1-013e-4c7a-b061-fd7ceb28dd66.jpg', 'eWHhzSPZn4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (70, '/images/bf19179f-92f6-4e15-99ea-707ded0ae17d.jpg', 'eWHhzSPZn4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (71, '/images/e6f5a20c-4205-4416-bdc6-1dc460450459.jpg', 'Xp5jCMsVLe');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (72, '/images/7aabb646-cdea-476f-ab13-7939f2e54871.jpg', 'xIRCvIkIPw');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (73, '/images/boy_co_don.png', 'newsdsd');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (91, '/images/b56fab44-6e48-4e70-b2d1-b1b3a5796b2f.png', '4txxTMnyBu');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (92, '/images/62e727db-6570-4be5-810d-229972badf27.png', '4txxTMnyBu');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (93, '/images/e2a24bfa-4fc7-47cd-b920-55438595781c.png', '4txxTMnyBu');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (94, '/images/22f30744-2ce4-4e22-9c16-2a70d948f63a.png', '4txxTMnyBu');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (95, '/images/7582f00c-e5d1-47bd-b604-a56ce4f9daad.jpeg', 'cGDSyzRW2W');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (96, '/images/13fdff39-5769-463d-b794-1b0300315c07.jpg', 'cGDSyzRW2W');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (97, '/images/d482b8d3-6d90-49d6-912a-160e23fcc700.webp', 'qOozAthcv4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (98, '/images/20953966-3e37-4e35-83da-e6063599435c.webp', 'qOozAthcv4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (99, '/images/bbbd7672-5952-4d63-bda0-7f3e82a2a6a1.webp', 'qOozAthcv4');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (100, '/images/105ab684-9f55-4bdc-b5c5-92bf051e8ac6.png', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (101, '/images/4639fee1-cce9-4e5f-98a1-1204e6a24b4b.png', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (102, '/images/6bd0083a-9e29-4dc7-8959-8ae48af8a331.jpeg', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (103, '/images/607af5a1-8215-4e7b-ac41-64a8e8fdd906.jpg', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (104, '/images/25f51c74-eb41-45ff-bf34-841cd516a765.jpeg', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (105, '/images/dcb390bd-3a61-46bb-96c1-b624a16d8f15.png', 'zqcCS8MA0s');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (106, '/images/06dd76a9-66aa-4d11-92a9-1cc463c4b585.jpeg', '4c8AnAhOJG');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (107, '/images/98235021-23b3-4f55-91bf-ea339b9a1127.jpeg', '4c8AnAhOJG');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (108, '/images/eb53e444-be73-4e44-9dec-65ef5dd1814a.jpeg', '4c8AnAhOJG');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (109, '/images/fdafc33f-428f-46f5-ae16-f8f77bef4dd2.jpeg', '4c8AnAhOJG');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (110, '/images/04a82d2b-2c9b-47cc-94d6-85d9115dbae6.jpg', 'L2Ykh5Twzg');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (111, '/images/6cff0cc0-a7ba-4666-ac7b-d4c12d41a63d.jpg', 'L2Ykh5Twzg');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (112, '/images/6a5e1e83-dbef-4e70-8f1e-e6b44572c9ba.jpeg', 'L2Ykh5Twzg');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (113, '/images/3d6d0caa-8d7c-457e-8493-1567f381817c.png', '46sCGqATA9');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (114, '/images/16db53e3-3fce-4593-95c1-b10dd58de5c6.png', '46sCGqATA9');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (115, '/images/cde7221b-36da-4134-9369-c7a550ba4e41.png', '46sCGqATA9');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (116, '/images/8c7629b8-4029-436b-83d7-659c8ab81065.png', '46sCGqATA9');
insert into cosmetic_ecommerce.product_image (id, imageurl, product_id) values (117, '/images/b0c7980e-afb0-4acc-a6ed-acb81e8fab4e.png', '46sCGqATA9');

insert into cosmetic_ecommerce.role (id, name) values (1, 'USER');
insert into cosmetic_ecommerce.role (id, name) values (2, 'STAFF');
insert into cosmetic_ecommerce.role (id, name) values (3, 'ADMIN');

insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('1KoJFShiwH', 'Chien', 'Dao', '$2a$10$V1S798yjUln1j4JGnOw2o.O7wr9plf8KqSpwFp1Xjw2ljVBlRrSB.', 'chiendq', '2023-04-19 09:09:37', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('7jGmZkC8co', 'Nguyễn Nam', 'Trường', '$2a$10$Mxma0Mw8kxpGkJXobO5CuO9PdfN0bRVucIlnLZw.AOFstmzoZM9DO', 'thai', '2023-05-01 21:40:24', null, null, '/images/248b3a31-dc0d-4fd6-affb-dfd61b914a52.png', '2001-12-22 00:00:00');
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('AnoxPIx4Ab', 'le', 'thanh', '$2a$10$ulQ2jhrcRo5GuU/qamPH6.RcX5XRO286kJY73WS5PdEF.lFNNPdfu', 'ddddd', '2023-03-24 09:45:50', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('bw70cL4bzo', 'Nam', 'Khanh', '$2a$10$QeBGg2bWOft6cYRz8BoLfeLXl/JI0G5VbtDWBfz37BMPppn90j/6y', 'khanh23', '2023-03-10 10:03:30', '0982233456', null, '/images/4e20ef35-a7be-4185-8bcc-d839400536c0.jpg', null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('GmL1YVZ188', 'Lập', 'Nguyễn', '$2a$10$5ZctqxpxknQJbeVVgLEXzuga5/JZTKqt4fqjW48CYeMGsjhEv8zIe', 'hacknicktaoah3', '2023-04-25 21:56:57', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('HqtErUIkhb', 'Nam', 'Anh', '$2a$10$I1BYVXc0pKf2cfhRut0jpuPg8PrTIUDqaIans67/SCv86LJfqECGa', 'bimbim234', '2023-03-13 08:12:33', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('S8qZgnGJUW', 'Nam', 'Truong', '$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi', 'truong', '2023-03-06 16:38:24', '0324456655', 'Thanh Ba Phú Thọ', '/images/69f25176-c963-4ce2-9db4-94c8ad76c6ea.png', '2001-04-10 15:08:33');
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('SmadmnCo7R', 'thanh', 'le', '$2a$10$YWp1cuD82UBOjO5RmJwsD.XIhye5ACHpTs91hhKYloanBhlYVpm3O', 'thanhle', '2023-03-24 09:48:01', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('VWgA6g15xk', 'Nam', 'BIN', '$2a$10$l6KWBGmzGPHhtIH/ifxdb.m4bW1txMLCtjBbIwnJG0585uUYqeJTm', 'xxxin', '2023-03-24 09:16:42', null, null, null, null);
insert into cosmetic_ecommerce.user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('xcsFASDs', 'Nam ', 'Truong', '$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi', 'truongAdmin', '2023-03-11 21:48:02', '0987654321', null, null, null);


insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('1KoJFShiwH', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('7jGmZkC8co', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('AnoxPIx4Ab', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('bw70cL4bzo', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('GmL1YVZ188', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('HqtErUIkhb', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('S8qZgnGJUW', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('SmadmnCo7R', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('VWgA6g15xk', 1);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('xcsFASDs', 2);
insert into cosmetic_ecommerce.user_role (user_id, role_id) values ('xcsFASDs', 3);


insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('2BduWz3Mto', 'PENDING', 694300, 'bw70cL4bzo', '2023-05-23 17:17:04', 'Quận 13', '0982233456', 'Huyện Lâm Bình', 'Tỉnh Tuyên Quang', 'Xã Phúc Yên');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('2h4Ka17v8Y', 'PENDING', 7859900, 'S8qZgnGJUW', '2023-04-21 10:06:35', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('3RNbYnQ1Sk', 'DELIVERING', 359900, 'S8qZgnGJUW', '2023-04-20 22:46:54', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('4ITbIVFNjT', 'PENDING', 2787780, 'S8qZgnGJUW', '2023-04-24 15:25:30', 'Số 3 ngõ 12 Nặc', '0976554321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Mã');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('5KAMYHSMyQ', 'CANCEL', 7500000, 'S8qZgnGJUW', '2023-04-22 18:45:37', '312 Kim Giang', '0987654321', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('6icvl6AOGa', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:42:23', 'Trường', '0987137433', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('8F5d1z7QtD', 'COMPLETE', 1710400, 'S8qZgnGJUW', '2023-05-11 13:54:43', '312 Kim Giang', '0987654321', 'Quận Cầu Giấy', 'Thành phố Hà Nội', 'Phường Dịch Vọng');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('9G9jpyEBUj', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:26:10', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('9GoclfQGDa', 'COMPLETE', 832800, 'GmL1YVZ188', '2023-05-04 21:57:25', 'Mỹ Đình pearl', '0365000282', 'Thị xã Phú Thọ', 'Tỉnh Phú Thọ', 'Phường Phong Châu');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('9u9APcgyU0', 'CANCEL', 2211700, 'S8qZgnGJUW', '2023-05-03 23:12:21', 'Mỹ Đình pearl', '0365000282', 'Huyện Hải Hà', 'Tỉnh Quảng Ninh', 'Xã Quảng Long');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('bq6PRzvpWw', 'PENDING', 580080, 'S8qZgnGJUW', '2023-04-22 09:19:00', '324 T', '097623443', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Bqi008PmHj', 'CANCEL', 2669760, 'S8qZgnGJUW', '2023-04-20 21:16:39', '312 Kim Giang, Hoang Mai', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('DtxSzeteaq', 'PENDING', 4559200, 'S8qZgnGJUW', '2023-04-29 00:55:30', '333 Thanh Mai', '0987654321', 'Huyện Yên Minh', 'Tỉnh Hà Giang', 'Xã Sủng Tráng');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('fbPrvw3kVL', 'CANCEL', 2820620, 'S8qZgnGJUW', '2023-04-24 09:42:07', '', '', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('FnRBimsKnj', 'COMPLETE', 760300, 'S8qZgnGJUW', '2023-04-20 22:41:20', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('hyZY70vgAn', 'PENDING', 1774800, 'bw70cL4bzo', '2023-05-23 09:24:07', 'Quận 13', '0982233456', 'Huyện Na Hang', 'Tỉnh Tuyên Quang', 'Xã Yên Hoa');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('IKiwi7YZdX', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:20:26', '', '', 'Huyện Bảo Lạc', 'Huyện Bảo Lạc', 'Xã Bảo Toàn');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('jbpuID4hNi', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:27:43', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('kRIjyfij06', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:40:07', '0987654321', '0987654321', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('lKG9VFQBKT', 'PENDING', 3557000, 'S8qZgnGJUW', '2023-04-30 21:21:29', '111 Tôn Thất thuyết', '0987776543', 'Quận Tây Hồ', 'Thành phố Hà Nội', 'Phường Quảng An');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('MA5HldvK8h', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:37:05', '312 Tôn Thất Thuyết', '0986543321', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('mfzV58otWP', 'DELIVERING', 8000000, '7jGmZkC8co', '2023-05-23 23:16:14', 'qưdqwdqwdwd', '0976543321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Mã');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('O2QINqWl6v', 'CANCEL', 2820620, 'S8qZgnGJUW', '2023-04-24 15:00:29', '333 Nan', '098543221', 'Huyện Yên Sơn', 'Tỉnh Tuyên Quang', 'Xã Trung Minh');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('ogXM03GSj5', 'COMPLETE', 593000, 'S8qZgnGJUW', '2023-03-20 14:42:08', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('OOQdPkNJHU', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:38:24', '312 Kim Guiang', '0985664443', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pHIM5dpi7p', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:21:23', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Huyện Chiêm Hóa', 'Xã Hà Lang');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pMisRqf2jC', 'COMPLETE', 340000, 'S8qZgnGJUW', '2023-03-11 19:31:16', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('psi6wq1nqh', 'COMPLETE', 3026900, 'bw70cL4bzo', '2023-05-12 09:07:59', 'Quận Tân Phú', '0981213455', 'Huyện Phong Điền', 'Tỉnh Thừa Thiên Huế', 'Xã Phong Bình');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pYqeawtclV', 'PENDING', 583200, 'S8qZgnGJUW', '2023-04-25 13:19:39', '333 Thanh Đô', '0987654321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Buồm');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('q49ZzRP6ws', 'PENDING', 3121100, 'bw70cL4bzo', '2023-04-29 01:02:30', 'Thanh Mai 123', '0987654321', 'Huyện Mèo Vạc', 'Tỉnh Hà Giang', 'Xã Pả Vi');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('qpL0TK6eCe', 'CANCEL', 828000, 'bw70cL4bzo', '2023-03-11 19:31:20', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('qWPdxpPlRS', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:28:30', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('rJqNx6kpJt', 'PENDING', 7500000, 'S8qZgnGJUW', '2023-04-21 10:06:48', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('tDHPgQ9xxe', 'PENDING', 1434200, '7jGmZkC8co', '2023-05-11 22:24:50', 'Chung Cư Hoàng Mai', '0987654321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Mã');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('UhHeUtNxvn', 'PENDING', 1513500, 'bw70cL4bzo', '2023-03-13 15:37:52', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Vnnmbclpeu', 'COMPLETE', 1475000, 'S8qZgnGJUW', '2023-03-20 10:40:18', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('vrJkrbMiUl', 'CANCEL', 1365480, 'S8qZgnGJUW', '2023-04-24 15:36:19', 'Bô 12', '0987776432', 'Huyện Đồng Văn', 'Tỉnh Hà Giang', 'Xã Lũng Táo');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Wtk4ioDoTs', 'PENDING', 525000, 'bw70cL4bzo', '2023-05-23 17:16:18', 'Quận 13', '0982233456', 'Huyện Vị Xuyên', 'Tỉnh Hà Giang', 'Xã Thuận Hoà');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('x7Ml8AWbNc', 'CANCEL', 2780000, 'S8qZgnGJUW', '2023-02-03 19:31:22', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('XjTh0uRJdD', 'COMPLETE', 1257100, '7jGmZkC8co', '2023-05-10 08:54:05', 'Chung cư Hoàng Mai', '0977654321', 'Quận Nam Từ Liêm', 'Thành phố Hà Nội', 'Phường Phương Canh');
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Xxph7C7sCn', 'COMPLETE', 1475000, 'S8qZgnGJUW', '2023-03-20 11:17:20', null, null, null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Yaloz0nSVw', 'CANCEL', 2858060, 'S8qZgnGJUW', '2023-04-20 22:15:54', '312 Kim Giang, Hoang Mai', '0987143522', null, null, null);
insert into cosmetic_ecommerce.order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('yXPTgylYi8', 'PENDING', 2001000, 'S8qZgnGJUW', '2023-04-25 21:48:40', 'Mỹ Đình pearl', '0365000282', 'Huyện Yên Minh', 'Tỉnh Hà Giang', 'Xã Mậu Duệ');


insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (10, 4, 'x7Ml8AWbNc', 'Al2fwjVbcv', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (11, 1, 'x7Ml8AWbNc', 'dsfsdffd', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (13, 4, 'pMisRqf2jC', 'sdfsdfsdf', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (14, 1, 'pMisRqf2jC', 'dsfsdffd', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (15, 4, 'qpL0TK6eCe', 'sdfsdfsdf', 8);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (17, 4, 'UhHeUtNxvn', 'zoiuv8krdt', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (18, 5, 'UhHeUtNxvn', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (19, 2, 'Vnnmbclpeu', 'ObKzjdfXhZ', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (20, 1, 'Vnnmbclpeu', 'Al2fwjVbcv', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (21, 2, 'Xxph7C7sCn', 'ObKzjdfXhZ', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (22, 1, 'Xxph7C7sCn', 'Al2fwjVbcv', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (23, 1, 'ogXM03GSj5', 'zoiuv8krdt', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (24, 1, 'ogXM03GSj5', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (25, 4, 'Bqi008PmHj', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (26, 2, 'Bqi008PmHj', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (27, 4, 'Yaloz0nSVw', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (28, 2, 'Yaloz0nSVw', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (29, 1, 'Yaloz0nSVw', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (30, 4, 'FnRBimsKnj', 'zoiuv8krdt', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (31, 1, 'FnRBimsKnj', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (32, 2, '3RNbYnQ1Sk', 'zoiuv8krdt', 18);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (33, 1, '3RNbYnQ1Sk', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (34, 2, '2h4Ka17v8Y', 'zoiuv8krdt', 18);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (35, 1, '2h4Ka17v8Y', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (36, 15, '2h4Ka17v8Y', 'B9dpNp9HN5', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (37, 15, 'rJqNx6kpJt', 'B9dpNp9HN5', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (38, 1, 'bq6PRzvpWw', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (39, 1, 'bq6PRzvpWw', 'newsdsd', 12);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (40, 3, 'MA5HldvK8h', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (41, 1, 'MA5HldvK8h', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (42, 2, 'MA5HldvK8h', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (43, 1, 'MA5HldvK8h', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (44, 3, 'OOQdPkNJHU', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (45, 1, 'OOQdPkNJHU', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (46, 2, 'OOQdPkNJHU', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (47, 1, 'OOQdPkNJHU', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (48, 3, 'kRIjyfij06', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (49, 1, 'kRIjyfij06', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (50, 2, 'kRIjyfij06', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (51, 1, 'kRIjyfij06', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (52, 3, '6icvl6AOGa', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (53, 1, '6icvl6AOGa', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (54, 2, '6icvl6AOGa', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (55, 1, '6icvl6AOGa', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (56, 15, '5KAMYHSMyQ', 'B9dpNp9HN5', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (57, 4, 'fbPrvw3kVL', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (58, 2, 'fbPrvw3kVL', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (59, 1, 'fbPrvw3kVL', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (69, 4, 'IKiwi7YZdX', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (70, 2, 'IKiwi7YZdX', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (71, 1, 'IKiwi7YZdX', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (72, 4, 'pHIM5dpi7p', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (73, 2, 'pHIM5dpi7p', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (74, 1, 'pHIM5dpi7p', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (75, 4, '9G9jpyEBUj', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (76, 2, '9G9jpyEBUj', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (77, 1, '9G9jpyEBUj', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (78, 4, 'jbpuID4hNi', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (79, 2, 'jbpuID4hNi', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (80, 1, 'jbpuID4hNi', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (81, 4, 'qWPdxpPlRS', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (82, 2, 'qWPdxpPlRS', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (83, 1, 'qWPdxpPlRS', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (84, 4, 'O2QINqWl6v', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (85, 2, 'O2QINqWl6v', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (86, 1, 'O2QINqWl6v', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (87, 1, '4ITbIVFNjT', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (88, 1, '4ITbIVFNjT', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (89, 1, '4ITbIVFNjT', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (90, 1, '4ITbIVFNjT', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (91, 1, '4ITbIVFNjT', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (92, 1, '4ITbIVFNjT', 'FUBsefe43', 9);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (93, 1, 'vrJkrbMiUl', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (94, 1, 'vrJkrbMiUl', 'K8BLdrr58I', 15);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (95, 1, 'vrJkrbMiUl', 'CdBlInu3d4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (96, 1, 'pYqeawtclV', 'K8BLdrr58I', 17);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (97, 1, 'pYqeawtclV', 'newsdsd', 12);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (98, 1, 'pYqeawtclV', 'zoiuv8krdt', 18);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (99, 3, 'yXPTgylYi8', 'newsdsd', 12);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (100, 4, 'yXPTgylYi8', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (101, 1, 'yXPTgylYi8', 'zoiuv8krdt', 18);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (102, 1, 'yXPTgylYi8', 'FUBsefe43', 9);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (103, 1, '9GoclfQGDa', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (104, 1, '9GoclfQGDa', 'K8BLdrr58I', 17);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (105, 4, 'DtxSzeteaq', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (106, 4, 'DtxSzeteaq', 'K8BLdrr58I', 17);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (107, 5, 'DtxSzeteaq', 'sdfsdfsdf', 8);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (108, 3, 'DtxSzeteaq', 'dsfsdffd', 7);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (109, 1, 'DtxSzeteaq', 'ObKzjdfXhZ', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (110, 1, 'q49ZzRP6ws', 'K8BLdrr58I', 17);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (111, 1, 'q49ZzRP6ws', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (112, 1, 'q49ZzRP6ws', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (113, 6, 'q49ZzRP6ws', 'afcmXiVUWT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (114, 1, 'q49ZzRP6ws', 'dsfsdffd', 7);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (115, 1, 'lKG9VFQBKT', 'xIRCvIkIPw', 19);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (116, 3, 'lKG9VFQBKT', 'Xp5jCMsVLe', 20);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (117, 3, 'lKG9VFQBKT', 'eWHhzSPZn4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (118, 1, 'lKG9VFQBKT', '4IZ7OT7jTT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (119, 1, 'lKG9VFQBKT', 'wv5i1EpuKs', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (120, 3, 'lKG9VFQBKT', 'kNKLovjTHf', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (121, 1, '9u9APcgyU0', 'xIRCvIkIPw', 19);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (122, 2, '9u9APcgyU0', 'Xp5jCMsVLe', 20);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (123, 2, '9u9APcgyU0', 'eWHhzSPZn4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (124, 2, '9u9APcgyU0', 'kNKLovjTHf', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (125, 1, 'XjTh0uRJdD', '0o9wgtoixV', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (126, 3, 'XjTh0uRJdD', '4IZ7OT7jTT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (127, 2, 'XjTh0uRJdD', 'bhsE3BRena', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (128, 1, 'XjTh0uRJdD', 'xIRCvIkIPw', 19);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (129, 2, '8F5d1z7QtD', 'cGDSyzRW2W', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (130, 1, '8F5d1z7QtD', '4txxTMnyBu', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (131, 1, '8F5d1z7QtD', 'xIRCvIkIPw', 19);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (132, 1, '8F5d1z7QtD', 'Xp5jCMsVLe', 20);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (133, 2, 'tDHPgQ9xxe', 'Niayrow9Th', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (134, 1, 'tDHPgQ9xxe', '9jf3u6i0bm', 16);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (135, 2, 'tDHPgQ9xxe', 'K8BLdrr58I', 17);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (136, 1, 'psi6wq1nqh', 'zJ4rdxymQg', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (137, 1, 'psi6wq1nqh', 'TMl4XmCoiR', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (138, 1, 'psi6wq1nqh', '5R53F9dVgN', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (139, 1, 'psi6wq1nqh', '0o9wgtoixV', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (140, 1, 'psi6wq1nqh', 'SkdAd99Bm4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (141, 1, 'psi6wq1nqh', 'gSY0unVGhh', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (142, 2, 'psi6wq1nqh', 'YaxBYgunjR', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (143, 2, 'psi6wq1nqh', 'zoiuv8krdt', 18);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (144, 1, 'psi6wq1nqh', 'NhDvPJvkRC', 10);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (145, 2, 'hyZY70vgAn', 'xIRCvIkIPw', 19);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (146, 2, 'hyZY70vgAn', 'Xp5jCMsVLe', 20);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (147, 3, 'hyZY70vgAn', 'bhsE3BRena', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (148, 1, 'hyZY70vgAn', '4IZ7OT7jTT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (149, 3, 'Wtk4ioDoTs', 'qOozAthcv4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (150, 1, 'Wtk4ioDoTs', 'cGDSyzRW2W', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (151, 1, 'Wtk4ioDoTs', 'bhsE3BRena', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (152, 1, '2BduWz3Mto', 'Xp5jCMsVLe', 20);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (153, 1, '2BduWz3Mto', 'eWHhzSPZn4', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (154, 1, '2BduWz3Mto', '4IZ7OT7jTT', null);
insert into cosmetic_ecommerce.order_detail (id, quantity, order_id, product_id, discount_product_id) values (155, 4, 'mfzV58otWP', 'L2Ykh5Twzg', 35);


insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (3, '2023-03-20 10:40:18', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Vnnmbclpeu', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (5, '2023-03-20 10:51:38', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị FastNinja', 'x7Ml8AWbNc', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (6, '2023-03-20 11:17:20', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Xxph7C7sCn', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (9, '2023-03-20 14:42:08', 'PENDING', 'Nguời dùng đặt hàng thành công', 'ogXM03GSj5', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (10, '2023-03-20 14:43:14', 'COMPLETE', 'Order đã đc hoàn thành', 'ogXM03GSj5', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (11, '2023-03-20 14:43:39', 'COMPLETE', 'Order đã đc hoàn thành', 'Xxph7C7sCn', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (12, '2023-03-20 14:43:52', 'COMPLETE', 'Order đã đc hoàn thành', 'Vnnmbclpeu', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (13, '2023-03-21 21:06:08', 'COMPLETE', 'Order đã được gửi đến địa chỉ', 'x7Ml8AWbNc', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (14, '2023-04-20 21:16:39', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Bqi008PmHj', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (16, '2023-04-20 22:15:54', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Yaloz0nSVw', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (20, '2023-04-20 22:33:41', 'CANCEL', 'Tao thích', 'Bqi008PmHj', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (21, '2023-04-20 22:41:20', 'PENDING', 'Nguời dùng đặt hàng thành công', 'FnRBimsKnj', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (22, '2023-04-20 22:44:49', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị SLow', 'FnRBimsKnj', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (23, '2023-04-20 22:46:54', 'PENDING', 'Nguời dùng đặt hàng thành công', '3RNbYnQ1Sk', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (24, '2023-04-21 10:06:35', 'PENDING', 'Nguời dùng đặt hàng thành công', '2h4Ka17v8Y', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (25, '2023-04-21 10:06:48', 'PENDING', 'Nguời dùng đặt hàng thành công', 'rJqNx6kpJt', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (26, '2023-04-21 10:30:05', 'CANCEL', 'Test huy don hang backend ma van giu nguyen trang', 'x7Ml8AWbNc', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (27, '2023-04-21 11:59:17', 'COMPLETE', 'Đơn hàng đã được hoàn thành', 'FnRBimsKnj', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (28, '2023-04-21 12:00:17', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị NinjaTurtle', '3RNbYnQ1Sk', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (29, '2023-04-22 09:19:00', 'PENDING', 'Nguời dùng đặt hàng thành công', 'bq6PRzvpWw', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (30, '2023-04-22 18:37:05', 'PENDING', 'Nguời dùng đặt hàng thành công', 'MA5HldvK8h', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (31, '2023-04-22 18:38:24', 'PENDING', 'Nguời dùng đặt hàng thành công', 'OOQdPkNJHU', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (32, '2023-04-22 18:40:07', 'PENDING', 'Nguời dùng đặt hàng thành công', 'kRIjyfij06', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (33, '2023-04-22 18:42:23', 'PENDING', 'Nguời dùng đặt hàng thành công', '6icvl6AOGa', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (34, '2023-04-22 18:45:37', 'PENDING', 'Nguời dùng đặt hàng thành công', '5KAMYHSMyQ', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (35, '2023-04-22 18:59:18', 'CANCEL', 'Tao thích', '5KAMYHSMyQ', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (36, '2023-04-24 09:42:07', 'PENDING', 'Nguời dùng đặt hàng thành công', 'fbPrvw3kVL', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (40, '2023-04-24 14:20:26', 'PENDING', 'Nguời dùng đặt hàng thành công', 'IKiwi7YZdX', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (41, '2023-04-24 14:21:23', 'PENDING', 'Nguời dùng đặt hàng thành công', 'pHIM5dpi7p', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (42, '2023-04-24 14:26:10', 'PENDING', 'Nguời dùng đặt hàng thành công', '9G9jpyEBUj', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (43, '2023-04-24 14:27:43', 'PENDING', 'Nguời dùng đặt hàng thành công', 'jbpuID4hNi', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (44, '2023-04-24 14:28:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'qWPdxpPlRS', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (45, '2023-04-24 15:00:29', 'PENDING', 'Nguời dùng đặt hàng thành công', 'O2QINqWl6v', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (46, '2023-04-24 15:25:30', 'PENDING', 'Nguời dùng đặt hàng thành công', '4ITbIVFNjT', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (48, '2023-04-24 15:36:19', 'PENDING', 'Nguời dùng đặt hàng thành công', 'vrJkrbMiUl', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (49, '2023-04-25 13:19:39', 'PENDING', 'Nguời dùng đặt hàng thành công', 'pYqeawtclV', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (50, '2023-04-25 13:42:55', 'CANCEL', 'Tao cứ thích', 'O2QINqWl6v', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (51, '2023-04-25 13:43:16', 'CANCEL', 'Tao thích again', 'Yaloz0nSVw', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (52, '2023-04-25 21:48:40', 'PENDING', 'Nguời dùng đặt hàng thành công', 'yXPTgylYi8', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (53, '2023-04-25 21:57:25', 'PENDING', 'Nguời dùng đặt hàng thành công', '9GoclfQGDa', 'GmL1YVZ188');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (54, '2023-04-29 00:55:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'DtxSzeteaq', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (55, '2023-04-29 01:02:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'q49ZzRP6ws', 'bw70cL4bzo');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (56, '2023-04-30 17:52:45', 'CANCEL', 'Tôi không thích', 'fbPrvw3kVL', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (57, '2023-04-30 21:21:29', 'PENDING', 'Nguời dùng đặt hàng thành công', 'lKG9VFQBKT', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (58, '2023-05-03 23:12:21', 'PENDING', 'Nguời dùng đặt hàng thành công', '9u9APcgyU0', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (59, '2023-05-03 23:13:18', 'CANCEL', 'ok', '9u9APcgyU0', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (60, '2023-05-04 08:54:05', 'PENDING', 'Nguời dùng đặt hàng thành công', 'XjTh0uRJdD', '7jGmZkC8co');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (61, '2023-05-11 13:54:43', 'PENDING', 'Nguời dùng đặt hàng thành công', '8F5d1z7QtD', 'S8qZgnGJUW');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (62, '2023-05-11 13:56:09', 'DELIVERING', null, '8F5d1z7QtD', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (63, '2023-05-11 13:56:20', 'COMPLETE', null, '8F5d1z7QtD', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (64, '2023-05-11 22:24:50', 'PENDING', 'Nguời dùng đặt hàng thành công', 'tDHPgQ9xxe', '7jGmZkC8co');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (65, '2023-05-12 09:07:59', 'PENDING', 'Nguời dùng đặt hàng thành công', 'psi6wq1nqh', 'bw70cL4bzo');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (66, '2023-05-12 09:36:44', 'DELIVERING', 'Đơn hàng đã được giao cho đơn vị vận chuyển NinjaTurtle', 'psi6wq1nqh', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (67, '2023-05-12 09:58:16', 'CANCEL', 'Người mua không nhận do nhãn hàng hợp tác với Chiến thần Hà Linh', 'vrJkrbMiUl', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (68, '2023-05-12 10:30:33', 'DELIVERING', '', 'psi6wq1nqh', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (69, '2023-05-12 15:33:32', 'COMPLETE', 'Người nhận đã nhận đc đơn hàng', 'psi6wq1nqh', 'xcsFASDs');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (70, '2023-05-23 09:24:07', 'PENDING', 'Nguời dùng đặt hàng thành công', 'hyZY70vgAn', 'bw70cL4bzo');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (71, '2023-05-23 17:16:18', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Wtk4ioDoTs', 'bw70cL4bzo');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (72, '2023-05-23 17:17:04', 'PENDING', 'Nguời dùng đặt hàng thành công', '2BduWz3Mto', 'bw70cL4bzo');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (73, '2023-05-23 23:16:14', 'PENDING', 'Nguời dùng đặt hàng thành công', 'mfzV58otWP', '7jGmZkC8co');
insert into cosmetic_ecommerce.order_history (id, date, history_order_status, info, order_id, user_id) values (74, '2023-05-24 08:39:31', 'DELIVERING', '', 'mfzV58otWP', 'xcsFASDs');


