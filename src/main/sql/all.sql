insert into category (id, name) values ('1xdii4vkG0', 'Sữa Rửa Mặt');
insert into category (id, name) values ('8olHRA6VtL', 'Chăm sóc da mật');
insert into category (id, name) values ('9baOQdhkDG', 'Nước Tẩy Trang');
insert into category (id, name) values ('9Qpehd6JAH', 'Son môi');
insert into category (id, name) values ('BIhVbxbOc4', 'Serum');
insert into category (id, name) values ('JRHfjyi7B9', 'Kem Chống Nắng');
insert into category (id, name) values ('ncE3FRIUQk', 'Nước Hoa');
insert into category (id, name) values ('RBgtBciusR', 'Mặt nạ');
insert into category (id, name) values ('v6J2HUIr15', 'Chăm sóc tóc');
insert into category (id, name) values ('xMGgXMuWmo', 'Kem Dưỡng');


insert into product (id, created_date, description, name, price, quantity, category_id) values ('0o9wgtoixV', '2023-04-30 00:02:55', 'Sữa Rửa Mặt Cetaphil Gentle Skin Cleanser phiên bản mới ra mắt năm 2022 từ thương hiệu Cetaphil với công thức khoa học mới cho làn da nhạy cảm, giúp làm sạch da, loại bỏ bụi bẩn, phù hợp cho mọi loại da, không làm khô da và duy trì hàng rào bảo vệ da suốt ngày dài.', 'Sữa Rửa Mặt Cetaphil Dịu Lành Cho Da Nhạy Cảm 500ml (Mới)
Gentle Skin Cleanser (New)', 329000, 100, '1xdii4vkG0');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('4IZ7OT7jTT', '2023-04-30 00:11:00', 'Sữa Rửa Mặt Simple Refreshing Facial Wash là sản phẩm sữa rửa mặt dạng gel dành cho mọi loại da nổi tiếng của thương hiệu mỹ phẩm Simple. Với công thức dịu nhẹ không chứa xà phòng cùng thành phần Pro-Vitamin B5 và Vitamin E, sản phẩm giúp làm sạch da hiệu quả, cuốn đi chất nhờn, bụi bẩn và các tạp chất khác mà không gây kích ứng, cho da mềm mịn, đồng thời mang lại cảm giác tươi mát và sạch thoáng cho da.', 'Sữa Rửa Mặt Simple Giúp Da Sạch Thoáng 150ml
Kind To Skin Refreshing Facial Wash Gel', 87000, 99, '1xdii4vkG0');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('5R53F9dVgN', '2023-04-30 00:03:43', 'Nước Tẩy Trang L''Oréal là dòng sản phẩm tẩy trang dạng nước đến từ thương hiệu L''Oreal Paris, được ứng dụng công nghệ Micellar dịu nhẹ giúp làm sạch da, lấy đi bụi bẩn, dầu thừa và cặn trang điểm chỉ trong một bước, mang lại làn da thông thoáng, mềm mượt mà không hề khô căng.', 'Nước Tẩy Trang L''Oreal Tươi Mát Cho Da Dầu, Hỗn Hợp 400ml
Micellar Water 3-in-1 Refreshing Even For Sensitive Skin', 159000, 100, '9baOQdhkDG');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('9jf3u6i0bm', '2023-04-07 10:58:21', 'If you are not getting any error message, it is possible that the validation is actually passing successfully.

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
insert into product (id, created_date, description, name, price, quantity, category_id) values ('afcmXiVUWT', '2023-03-04 17:06:42', 'Bộ gội xả có hương thơm đặc trưng của gừng kết hợp với hương Vanilla ấm áp mang đến cảm giác thư giãn sau khi gội. Bên trong dầu gội gừng ngăn rụng tóc Weilaiya là những tép gừng tươi vàng sóng sánh

Các thành phần có trong dầu gội gừng Weilaiya

Chiết xuất gừng tươi Vân Nam: Ngăn rụng tóc gấp 3 lần gừng thông thường
Hyaluronic Acid: Hấp thụ nước gấp 1000 lần, giữ nước và dưỡng ẩm cho da
Tocopherol: Chính là Vitamin E, có khả năng chống oxy hóa mạnh, làm chậm quá trình lão hóa của da đầu', 'Bộ Dầu Gội Xả Chiết Xuất Gừng Weilaiya Ginger Shampoo & Conditioner (tặng set mini Weilaiya)', 324000, 85, 'v6J2HUIr15');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('Aff3I9DxX0', '2023-04-30 00:09:32', 'Tinh chất cấp ẩm cho da nhạy cảm Rich Moist Soothing Serum đến từ thương hiệu mỹ phẩm Dear, Klairs là sản phẩm tinh chất (serum) giúp cung cấp độ ẩm chuyên sâu dành cho tình trạng da khô mất nước, giúp da trở nên căng mọng ngay tức thì, đồng thời hỗ trợ làm dịu mát da, xoa dịu mẩn đỏ và hỗ trợ ngăn ngừa các dấu hiệu lão hóa.', 'Serum Klairs Cấp Ẩm Cho Da Khô, Nhạy Cảm 80ml
Rich Moist Soothing Serum', 276000, 100, 'BIhVbxbOc4');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('Al2fwjVbcv', '2023-03-04 16:55:33', 'Kem Ủ Tóc Boya Q10 là sản phẩm thuộc thương hiệu BOYA từ công ty Karmart Thái Lan. Tất cả công nghệ và thành phần trong sản phẩm đều được chuyển giao từ Hàn Quốc. Các tiêu chuẩn an toàn quốc tế như GMP hay FDA đều được ứng dụng.

Nhắc tới Karmart thì không người dân Thái nào không biết và họ rất ưa chuộng các sản phẩm chăm sóc da, chăm sóc toàn thân và trang điểm của hàng vì tính đa dạng, an toàn và thân thiện với làn da.', 'Kem Ủ Tóc BOYA Hair Treatment Q10 500gr', 75000, 14, 'v6J2HUIr15');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('B9dpNp9HN5', '2023-03-02 16:19:19', 'Nước Hoa chính hãng chất lượng cao', 'Nước Hoa Hương Downy', 500000, 45, 'ncE3FRIUQk');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('bhsE3BRena', '2023-04-30 00:11:51', 'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp là dòng sữa rửa mặt đến từ thương hiệu mỹ phẩm Cosrx của Hàn Quốc, với độ pH lý tưởng 4.5 - 5.5 sản phẩm an toàn và dịu nhẹ trên mọi làn da ngay cả làn da nhạy cảm và da mụn. Gel rửa mặt chứa 0,5% BHA tự nhiên và chiết xuất tràm trà làm sạch sâu lỗ chân lông, hỗ trợ kháng khuẩn, làm sạch mụn đồng thời tẩy da chết nhẹ nhàng.', 'Gel Rửa Mặt Cosrx Tràm Trà, 0.5% BHA Có Độ pH Thấp 150ml
Low pH Good Morning Gel Cleanser', 127000, 100, '1xdii4vkG0');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('CdBlInu3d4', '2023-03-04 16:57:55', 'Thời tiết nóng bức của mùa hè ảnh hưởng trực tiếp đến sức khỏe mái tóc

Hơn nữa, cột tóc, búi tóc quá nhiều để tìm cảm giác mát mẻ trong mùa nóng cũng chính là nguyên nhân khiến mái tóc kém bồng bềnh.

Kem ủ tóc cao cấp Wellmate với thành phần protein, keratin và tinh dầu argan chính là giải pháp chăm sóc mái tóc chắc khỏe và mượt mà.

', 'Kem Ủ Tóc Cao Cấp Wellmate', 450000, 3, 'v6J2HUIr15');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('dsfsdffd', '2023-03-02 22:04:01', ' Thương hiệu mỹ phẩm NARUKO đến từ Đài Loan nổi tiếng với các dòng sản phẩm mặt nạ giấy dưỡng da được chiết xuất từ các thành phần thiên nhiên như Tràm Trà, Bạch Ngọc Lan, Ý Dĩ Nhân Đỏ, Hoa Hồng, Hoa Thủy Tiên... giúp dưỡng da chuyên sâu và hỗ trợ cải thiện các vấn đề về da khác nhau.

       Mặt Nạ NARUKO hiện đã có mặt tại Hasaki với các phân loại như sau cho bạn lựa chọn:

       Naruko Raw Job’s Tears Brightening Mask – Ý dĩ nhân đỏ sáng da mới – Mặt nạ se khít lỗ chân lông, sáng da

       Naruko RJT Pore Minimizing and Brightening Mask – Ý dĩ nhân đỏ – Mặt nạ se khít lỗ chân lông

       Naruko Narcissus Repairing Mask – Hoa thủy tiên – Mặt nạ tế bào gốc thực vật DNA phục hồi da

       Naruko Rose and BOTANIC HA Aqua Cubic Hydrating Mask EX – Hoa hồng nhung – Mặt nạ cấp nước

       Naruko Tea Tree Shine Control and Blemish Clear Mask – Trà tràm – Mặt nạ trà tràm kiểm soát dầu và mụn

       Naruko Taiwan Magnolia Brightening and Firming Mask EX – Bạch ngọc lan – Mặt nạ dưỡng sáng và săn chắc da', 'Hộp 8 Miếng Mặt Nạ Naruko Tràm Trà Kiềm Dầu Giảm Mụn 26ml/M
Tea Tree Shine Control and Blemish Clear Mask', 260000, 42, 'RBgtBciusR');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('eirVpG6qz8', '2023-03-02 21:04:29', 'Mặt Nạ Dưỡng Săn Chắc Da BNBG Vita Genic Jelly Mask 30ml

"Mặt nạ được xem như vị cứu tinh đối với làn da bạn". BNBG Vita Genic Jelly Mask chứa dưỡng chất Vitamin dạng gel đậm đặc, hàm lượng lên đến 20.000ppm được chiết xuất từ các trái cây tươi ở hòn đảo Jeju xinh đẹp. Mang đến làn da khỏe mạnh, bóng mượt đầy sức sống, phục hồi độ đàn hồi, ngăn ngừa quá trình lão hóa đồng thời cung cấp đủ ẩm cho da luôn mềm, mịn màng. Khi sử dụng BNBG Vita Genic Jelly Mask, bạn sẽ được trải nghiệm cảm giác thư giãn và sảng khoái.

BNBG được biết đến là một bệnh viện thẩm mỹ nổi tiếng với đội ngũ bác sĩ có tay nghề hàng đầu tại Hàn Quốc. Là bệnh viện ứng dụng các công nghệ hiện đại tại Châu Á để nghiên cứu ra các loại mỹ phẩm chăm sóc da cũng như các phương pháp phẫu thuật mới để mang lại vẻ đẹp hoàn thiện cho phụ nữ. Chương trình làm đẹp uy tín tại Hàn Quốc "Get It Beauty" đã đẩy cơn sốt mặt nạ jelly này lên đỉnh điểm khi có một chị da đẹp thật đẹp, căng mọng đã cho biết sử dụng mặt nạ này.', 'Mặt nạ dưỡng da NARUKO', 700000, 75, 'RBgtBciusR');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('eWHhzSPZn4', '2023-04-30 00:14:14', 'Kem Dưỡng Ẩm, Làm Dịu Da Ban Đêm Midnight Blue Calming Cream là kem dưỡng dành cho da nhạy cảm đến từ thương hiệu Dear, Klairs trực thuộc By Wishtrend. Với thành phần Guaiazulene được chiết xuất từ dầu hoa cúc tạo màu xanh dịu mát tự nhiên, giúp làm dịu da kích ứng vô cùng hiệu quả, kết hợp cùng chiết xuất rau má cấp ẩm, làm dịu da và hỗ trợ phục hồi da mụn rất tốt.', 'Kem Dưỡng Ẩm Klairs Làm Dịu & Phục Hồi Da Ban Đêm 60ml
Midnight Blue Calming Cream', 367000, 97, 'xMGgXMuWmo');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('FUBsefe43', '2023-03-11 23:56:18', 'Có trụ sở tại các Tiểu vương quốc Ả Rập thống nhất, bậc thầy mùi hương Armaf hiện nắm giữ hàng tá mùi hương khác nhau vô cùng nổi tiếng ở thị trường châu Âu và nhận được sự ưa chuộng của cả nam giới lẫn nữ giới. Giữ trong mình hương thơm đáng yêu, tinh tế tác hợp cùng hương trái cây gợi lên một mùa xuân ấm áp, dịu nhẹ và mát mẻ.

Được ra mắt vào năm 2015, Armaf Club De nuit Women là một kỳ công vang dội khi mang tới những mùi hương khẳng định đẳng cấp của sự xa xỉ, sang trọng đến với giới thượng lưu cũng như những người yêu thích nước hoa trên toàn thế giới.', 'Nước Hoa Armaf Club De Nuit Women EDP 105ml', 1300000, 10, 'ncE3FRIUQk');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('GlXVUzrPf2', '2023-04-30 00:07:34', 'Tinh Chất GoodnDoc Hydra B5 Serum là sản phẩm serum dưỡng da đến từ thương hiệu GoodnDoc của Hàn Quốc, chứa thành phần Pro-Vitamin B5 kết hợp cùng Hyaluronic Acid, Adenosine và Niacinamide giúp dưỡng ẩm chuyên sâu và hỗ trợ phục hồi làn da tổn thương, kích ứng. Giúp da luôn căng đầy sức sống, trẻ hóa và căng mịn da. Bảo vệ làn da của bạn khỏi cháy nắng, nám tàn nhang da. Phục hồi tăng cường độ đàn hồi cho da, giúp da khô ráp trở nên mịn màng và trẻ trung hơn.', 'Serum GoodnDoc Dưỡng Ẩm, Hỗ Trợ Phục Hồi Da 30ml
Hydra B5 Serum', 348000, 100, 'BIhVbxbOc4');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('gSY0unVGhh', '2023-04-29 23:06:47', 'Sữa Rửa Mặt Cerave Sạch Sâu là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Cerave của Mỹ, với sự kết hợp của ba Ceramides thiết yếu, Hyaluronic Acid sản phẩm giúp làm sạch và giữ ẩm cho làn da mà không ảnh hưởng đến hàng rào bảo vệ da mặt và cơ thể.', 'Sữa Rửa Mặt CeraVe Cho Da Thường Đến Khô 473ml
Hydrating Cleanser', 355000, 100, '1xdii4vkG0');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('K8BLdrr58I', '2023-03-27 10:00:39', 'Nước Hoa Hồng Obagi Clenziderm MD Pore Therapy là sản phẩm Toner chuyên biệt giúp làm sạch sâu lỗ chân lông và giảm nhờn, mụn đến từ thương hiệu dược mỹ phẩm Obagi Medical. Với hoạt chất chính là 2% Salicylic Acid (BHA), sản phẩm giúp lấy đi lượng tế bào chết làm tắc nghẽn lỗ chân lông, giúp da hấp thu hiệu quả các bước chăm sóc tiếp theo. Làn da được làm sạch sâu, thoáng nhẹ, đồng thời cải thiện tình trạng mụn và giúp lỗ chân lông nhỏ đi trông thấy.

Bảo quản:
Nơi khô ráo, thoáng mát tránh ánh nắng mặt trời và nhiệt độ cao.

Tránh xa tầm tay trẻ em.

Đậy nắp kín sau khi sử dụng.

Thông số sản phẩm:
Dung tích: 148ml

Thương hiệu: Obagi Medical

Xuất xứ thương hiệu: Mỹ

Nơi sản xuất: Mỹ', 'Nước Hoa Hồng Obagi BHA 2% Giảm Nhờn Mụn 148ml
Clenziderm MD Pore Therapy Salicylic Acid 2% Acne Treatment', 689000, 266, 'ncE3FRIUQk');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('kNKLovjTHf', '2023-04-30 00:13:09', 'Kem Dưỡng La Roche-Posay Cicaplast Baume B5 Soothing Repairing Balm là sản phẩm kem dưỡng dành cho da nhạy cảm đến từ thương hiệu La Roche-Posay, giúp dưỡng ẩm và làm dịu tình trạng da kích ứng, tổn thương, hỗ trợ phục hồi làn da. Sản phẩm được khuyên dùng sau các liệu trình điều trị thẩm mỹ & kích ứng da nhẹ ở người lớn, trẻ em và trẻ sơ sinh.', 'Kem Dưỡng La Roche-Posay Làm Dịu, Hỗ Trợ Phục Hồi Da 40ml
Cicaplast Baume B5 Soothing Repairing Balm', 292000, 97, 'xMGgXMuWmo');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('newsdsd', '2023-03-26 21:18:41', 'Ko có gì cả', 'new 2', 120000, 5, null);
insert into product (id, created_date, description, name, price, quantity, category_id) values ('NhDvPJvkRC', '2023-03-13 15:18:29', 'Mặt Nạ Tóc Cao Cấp Phục Hồi Hư Tổn TSUBAKI Premium Repair Mask đến từ thương hiệu chăm sóc tóc nổi tiếng TSUBAKI Nhật Bản mang đến trải nghiệm dưỡng tóc chuẩn Salon mà không mất thời gian chờ đợi, mái tóc suôn mượt và mềm mại với các thành phần giàu dưỡng chất và công thức phục hồi tiên tiến vượt bậc.

Hiện sản phẩm TSUBAKI Premium Repair Mask 180g đã có mặt tại Hasaki.', 'Mặt Nạ Tóc Tsubaki Cao Cấp Phục Hồi Hư Tổn 180g
Premium Repair Mask', 269000, 182, 'v6J2HUIr15');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('Niayrow9Th', '2023-04-30 00:10:19', 'Purifying Gel Wash là sản phẩm sữa rửa mặt đến từ thương hiệu mỹ phẩm Simple, giúp kiềm dầu, ngừa mụn cho da dầu dễ nổi mụn. Sản phẩm với chất gel thanh khiết, chứa chiết xuất Cây Phỉ (Witch Hazel), Kẽm, Prebiotic từ thực vật, Niacinamide (Vitamin B3) sẽ giúp cuốn đi bụi bẩn, tạp chất và dầu thừa, làm sạch da và giảm bóng nhờn, ngừa mụn hiệu quả.', 'Gel Rửa Mặt Simple Thanh Khiết, Giảm Bóng Nhờn 150ml
Purifying Gel Wash', 94000, 100, '1xdii4vkG0');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('ObKzjdfXhZ', '2023-03-02 16:22:45', 'Nước Hoa xịn ', 'Nước Hoa Trường NN', 700000, 74, 'ncE3FRIUQk');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('sdfsdfsdf', '2023-03-02 22:04:01', 'Vớ vẩn 1', 'Vớ 1', 20000, 9, null);
insert into product (id, created_date, description, name, price, quantity, category_id) values ('SkdAd99Bm4', '2023-04-30 00:00:40', 'Kem Chống Nắng La Roche-Posay Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+ đến từ thương hiệu dược mỹ phẩm La Roche-Posay là sản phẩm kem chống nắng dành cho làn da dầu mụn, sở hữu công nghệ cải tiến XL-Protect cùng kết cấu kem gel dịu nhẹ & không nhờn rít, giúp ngăn ngừa tia UVA/UVB + tia hồng ngoại + tác hại từ ô nhiễm, bảo vệ toàn diện cho làn da luôn khỏe mạnh.', 'Kem Chống Nắng La Roche-Posay Kiểm Soát Dầu SPF50+ 50ml
Anthelios Anti-Shine Gel-Cream Dry Touch Finish Mattifying Effect SPF50+', 399000, 100, 'JRHfjyi7B9');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('TMl4XmCoiR', '2023-04-30 00:04:58', 'Tinh Chất Siêu Cấp Ẩm Sáng Da L''Oreal Paris Revitalift 1.5% Hyaluronic Acid Serum là dòng sản phẩm serum đến từ thương hiệu L''Oréal Paris nổi tiếng của Pháp, với sự kết hợp không chỉ 1 mà đến 2 loại Hyaluronic Acid ưu việt ở nồng độ 1.5% sẽ là giải pháp chăm sóc da hiệu quả dành cho làn da khô & lão hóa, giúp cung cấp độ ẩm tối đa cho da căng mịn và tươi sáng tức thì. Với Revitalift HA đậm đặc, làn da sẽ có sự thay đổi rõ rệt, mang đến vẻ ngoài rạng rỡ cho bạn.', 'Serum L''Oreal Hyaluronic Acid Cấp Ẩm Sáng Da 30ml
Revitalift Hyaluronic Acid 1.5% Hyaluron Serum', 359000, 100, 'BIhVbxbOc4');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('wv5i1EpuKs', '2023-04-30 00:06:50', 'Timeless Vitamin B5 Serum là sản phẩm tinh chất (serum) dưỡng da đa công dụng đến từ thương hiệu Timeless nổi tiếng của Mỹ, với công thức lỏng nhẹ, không chứa dầu, giúp làm dịu và hỗ trợ phục hồi làn da đang gặp vấn đề. Công thức chứa thành phần Vitamin B5 có tác dụng thúc đẩy chữa lành các tổn thương do mụn, làm giảm mẩn đỏ và giảm thiểu sẹo, hỗ trợ khôi phục hàng rào bảo vệ tự nhiên của da. Kết hợp cùng thành phần Hyaluronic Acid cấp nước và cân bằng độ ẩm cho làn da sáng khỏe.', 'Serum Timeless Vitamin B5 Làm Dịu & Phục Hồi Da 30ml
Vitamin B5 Serum', 359000, 99, 'BIhVbxbOc4');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('xIRCvIkIPw', '2023-04-30 00:15:27', 'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu Bảo Vệ Hoàn Hảo là sản phẩm chống nắng phiên bản mới nhất năm 2022 đến từ thương hiệu chống nắng dưỡng da ANESSA hàng đầu Nhật Bản suốt 21 năm liên tiếp, giúp chống lại tác hại của tia UV & bụi mịn tối ưu dưới mọi điều kiện sinh hoạt, kể cả thời tiết khắc nghiệt nhất. Sản phẩm đặc biệt phù hợp với làn da thiên dầu.', 'Sữa Chống Nắng Anessa Dưỡng Da Kiềm Dầu 60ml
Perfect UV Sunscreen Skincare Milk N SPF50+ PA++++', 459000, 99, 'JRHfjyi7B9');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('Xp5jCMsVLe', '2023-04-30 00:14:55', 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm 50ml là sản phẩm kem chống nắng đến từ thương hiệu mỹ phẩm Skin1004 của Hàn Quốc, là kem chống nắng vật lý với chiết xuất rau má và chất kem mỏng nhẹ có màu giúp che phủ nhẹ khuyết điểm cho da. Công thức đa năng vừa chống nắng vừa đều màu da lại dưỡng ẩm chính là sản phẩm mà những cô nàng da mụn hay da dầu nhạy cảm cần vì không cần sử dụng quá nhiều bước lỉnh kỉnh.', 'Kem Chống Nắng Skin1004 Cho Da Nhạy Cảm SPF 50+ 50ml
Madagascar Centella Air-Fit Suncream Plus SPF50+ PA++++', 267000, 97, 'JRHfjyi7B9');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('YaxBYgunjR', '2023-04-30 00:01:47', 'Nước Tẩy Trang Dành Cho Da Nhạy Cảm Bioderma Sensibio H2O là sản phẩm nước tẩy trang công nghệ Micellar đầu tiên trên thế giới, do thương hiệu dược mỹ phẩm Bioderma nổi tiếng của Pháp phát minh. Dung dịch giúp làm sạch sâu da và loại bỏ lớp trang điểm nhanh chóng mà không cần rửa lại bằng nước. Công thức dịu nhẹ, không kích ứng, không gây khô căng da, đặc biệt phù hợp với làn da nhạy cảm.', 'Nước Tẩy Trang Bioderma Dành Cho Da Nhạy Cảm 500ml
Sensibio H2O', 393000, 100, '9baOQdhkDG');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('zJ4rdxymQg', '2023-04-30 00:05:50', 'Tinh Chất Klairs Vitamin C Dưỡng Sáng Da, Mờ Thâm 35ml là sản phẩm tinh chất đến từ thương hiệu Klairs của Hàn Quốc, tiếp thêm sinh lực trẻ hóa làn da với sức mạnh của 5% Vitamin C dạng Acid L-ascorbic nhẹ dịu; cùng chiết xuất Rau Má không gây kích ứng nhưng vẫn hiệu quả trong việc làm mờ các vết mụn và vết nám, cải thiện làn da xỉn và không đều màu', 'Serum Klairs Vitamin C Cho Da Nhạy Cảm 35ml
Freshly Juiced Vitamin Drop', 280000, 100, 'BIhVbxbOc4');
insert into product (id, created_date, description, name, price, quantity, category_id) values ('zoiuv8krdt', '2023-03-13 15:33:21', 'Son Dưỡng Môi Mediheal 10ml là sản phẩm son dưỡng môi đến từ thương hiệu mỹ phẩm Mediheal của Hàn Quốc, chứa thành phần Dexpanthenol (tiền chất Vitamin B5), Vitamin B5, tinh chất cây tầm xuân, Ceramide cải thiện tình trạng khô ráp của môi giúp cho đôi môi trở nên mềm mại, cải thiện sắc tố môi, hạn chế các tế bào melanin làm môi trở nên thâm sạm môi, giúp môi sáng màu hơn.', 'Son Dưỡng Mediheal Hỗ Trợ Giảm Thâm Môi Ban Ngày 10ml
Labocare Pantenolips Healssence', 143000, 289, '9Qpehd6JAH');


insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('2VHhXj3WY0', '2023-03-02 22:44:20', 'Giảm giá', 10, '2023-03-05 05:04:01', '2023-03-01 22:04:01');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('KQBoLBEt3M', '2023-03-10 10:05:58', 'Giảm giá', 40, '2023-09-12 22:04:01', '2023-03-09 22:04:01');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('msWgBEHXPM', '2023-04-30 20:59:49', 'Giảm giá cho 1 số mặt hàng mới nổi gần đây', 10, '2023-05-30 22:04:01', '2023-03-01 22:04:01');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('new1', '2023-03-02 16:46:25', 'Gỉam giá cho nước hoa', 20, '2023-03-16 04:46:57', '2023-03-02 16:47:07');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('t2cKL9vr10', '2023-03-27 10:10:45', 'Giảm giá', 28, '2023-04-24 22:04:01', '2023-03-01 22:04:01');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('test2', '2023-03-02 23:34:00', 'Ko query', 34, '2023-08-26 00:12:18', '2023-03-01 20:34:31');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('xGXPQmveEn', '2023-03-05 09:08:42', 'Giảm giá', 20, '2023-03-11 22:04:01', '2023-03-01 22:04:01');
insert into discount (code, created_date, description, discount_percent, end_date, start_date) values ('Z3Ec5duEe9', '2023-03-13 15:22:01', 'Giảm giá cho 1 vài sản phẩm mặt nạ', 30, '2023-08-31 00:00:00', '2023-03-12 00:00:00');


insert into discount_product (id, discount_price, discount_id, product_id) values (1, 40000, 'new1', 'B9dpNp9HN5');
insert into discount_product (id, discount_price, discount_id, product_id) values (2, 234000, '2VHhXj3WY0', 'dsfsdffd');
insert into discount_product (id, discount_price, discount_id, product_id) values (6, 360000, 'xGXPQmveEn', null);
insert into discount_product (id, discount_price, discount_id, product_id) values (7, 156000, 'KQBoLBEt3M', 'dsfsdffd');
insert into discount_product (id, discount_price, discount_id, product_id) values (8, 12000, 'KQBoLBEt3M', 'sdfsdfsdf');
insert into discount_product (id, discount_price, discount_id, product_id) values (9, 910000, 'Z3Ec5duEe9', 'FUBsefe43');
insert into discount_product (id, discount_price, discount_id, product_id) values (10, 188300, 'Z3Ec5duEe9', 'NhDvPJvkRC');
insert into discount_product (id, discount_price, discount_id, product_id) values (12, 84000, 'Z3Ec5duEe9', 'newsdsd');
insert into discount_product (id, discount_price, discount_id, product_id) values (14, 14000, 'Z3Ec5duEe9', 'sdfsdfsdf');
insert into discount_product (id, discount_price, discount_id, product_id) values (15, 496080, 't2cKL9vr10', 'K8BLdrr58I');
insert into discount_product (id, discount_price, discount_id, product_id) values (16, 419400, 'KQBoLBEt3M', '9jf3u6i0bm');
insert into discount_product (id, discount_price, discount_id, product_id) values (17, 413400, 'KQBoLBEt3M', 'K8BLdrr58I');
insert into discount_product (id, discount_price, discount_id, product_id) values (18, 85800, 'KQBoLBEt3M', 'zoiuv8krdt');
insert into discount_product (id, discount_price, discount_id, product_id) values (19, 413100, 'msWgBEHXPM', 'xIRCvIkIPw');
insert into discount_product (id, discount_price, discount_id, product_id) values (20, 240300, 'msWgBEHXPM', 'Xp5jCMsVLe');

insert into product_image (id, imageurl, product_id) values (34, '/images/well_mate.png', 'CdBlInu3d4');
insert into product_image (id, imageurl, product_id) values (35, '/images/well_mate2.png', 'CdBlInu3d4');
insert into product_image (id, imageurl, product_id) values (36, '/images/acda8979-0945-4cc4-864c-809553d71173.png', 'NhDvPJvkRC');
insert into product_image (id, imageurl, product_id) values (37, '/images/35807fd8-b015-4d94-bcd9-4eb336f3fc6e.png', 'zoiuv8krdt');
insert into product_image (id, imageurl, product_id) values (38, '/images/6e4f670d-9ef3-42d6-b95b-ded204e6a2e5.png', 'zoiuv8krdt');
insert into product_image (id, imageurl, product_id) values (39, '/images/3de7b002-d6f1-4011-8c7a-cc79d6c9a1f9.jpeg', 'ObKzjdfXhZ');
insert into product_image (id, imageurl, product_id) values (40, '/images/c0092a5a-3a2d-4361-b07a-df0fa64de8eb.png', 'ObKzjdfXhZ');
insert into product_image (id, imageurl, product_id) values (42, '/images/obagi1.png', 'K8BLdrr58I');
insert into product_image (id, imageurl, product_id) values (43, '/images/obagi2.png', 'K8BLdrr58I');
insert into product_image (id, imageurl, product_id) values (50, '/images/1fb9d05b-07da-422e-a4b5-48f14b615636.jpeg', '9jf3u6i0bm');
insert into product_image (id, imageurl, product_id) values (51, '/images/7028d7fd-064d-4595-9048-edbc22acd04d.png', '9jf3u6i0bm');
insert into product_image (id, imageurl, product_id) values (52, '/images/well_mate2.png', 'B9dpNp9HN5');
insert into product_image (id, imageurl, product_id) values (53, 'images/well_mate.png', 'B9dpNp9HN5');
insert into product_image (id, imageurl, product_id) values (54, '/images/6a7d7b32-d504-4b27-a359-a7ab81defdc4.jpg', 'gSY0unVGhh');
insert into product_image (id, imageurl, product_id) values (55, '/images/4dd98861-3dcd-41ca-8729-06aa5398d803.jpg', 'gSY0unVGhh');
insert into product_image (id, imageurl, product_id) values (56, '/images/9671613f-a674-42fe-8d7a-aaf7cec17548.jpg', 'SkdAd99Bm4');
insert into product_image (id, imageurl, product_id) values (57, '/images/9eb39bd8-fc8d-4f1e-bdf2-400300f770c8.jpg', 'YaxBYgunjR');
insert into product_image (id, imageurl, product_id) values (58, '/images/e2d6b6a6-fd06-4ce7-87a9-1620e61c8c30.jpg', '0o9wgtoixV');
insert into product_image (id, imageurl, product_id) values (59, '/images/1c6626c5-6b38-4534-9783-07a8c29b3197.jpg', '5R53F9dVgN');
insert into product_image (id, imageurl, product_id) values (60, '/images/8084eaa5-01bf-4cf6-9ed4-9422f2de4d24.jpg', 'TMl4XmCoiR');
insert into product_image (id, imageurl, product_id) values (61, '/images/2b3c2307-f818-4e1b-87ac-a333c00b8984.jpg', 'zJ4rdxymQg');
insert into product_image (id, imageurl, product_id) values (62, '/images/63f21373-16a7-46be-a374-59ef03fb6e47.jpg', 'wv5i1EpuKs');
insert into product_image (id, imageurl, product_id) values (63, '/images/ccfcd8f2-bc34-416b-bf74-cec1bd0ba8f9.jpg', 'GlXVUzrPf2');
insert into product_image (id, imageurl, product_id) values (64, '/images/43677272-6bef-4271-98e8-d866f7949892.jpg', 'Aff3I9DxX0');
insert into product_image (id, imageurl, product_id) values (65, '/images/7433259e-d7a8-4e19-9914-c780301ccd09.jpg', 'Niayrow9Th');
insert into product_image (id, imageurl, product_id) values (66, '/images/3be3418c-2df2-489f-a0d6-cfef459854de.jpg', '4IZ7OT7jTT');
insert into product_image (id, imageurl, product_id) values (67, '/images/ac552e14-7b16-400e-b2a1-6299478c5ac5.jpg', 'bhsE3BRena');
insert into product_image (id, imageurl, product_id) values (68, '/images/b841da3e-97e5-4b87-a53b-08118eaf5913.jpg', 'kNKLovjTHf');
insert into product_image (id, imageurl, product_id) values (69, '/images/a24f21b1-013e-4c7a-b061-fd7ceb28dd66.jpg', 'eWHhzSPZn4');
insert into product_image (id, imageurl, product_id) values (70, '/images/bf19179f-92f6-4e15-99ea-707ded0ae17d.jpg', 'eWHhzSPZn4');
insert into product_image (id, imageurl, product_id) values (71, '/images/e6f5a20c-4205-4416-bdc6-1dc460450459.jpg', 'Xp5jCMsVLe');
insert into product_image (id, imageurl, product_id) values (72, '/images/7aabb646-cdea-476f-ab13-7939f2e54871.jpg', 'xIRCvIkIPw');

insert into role (id, name) values (1, 'USER');
insert into role (id, name) values (2, 'STAFF');
insert into role (id, name) values (3, 'ADMIN');

insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('1KoJFShiwH', 'Chien', 'Dao', '$2a$10$V1S798yjUln1j4JGnOw2o.O7wr9plf8KqSpwFp1Xjw2ljVBlRrSB.', 'chiendq', '2023-04-19 09:09:37', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('7jGmZkC8co', 'Nguyễn Nam', 'Trường', '$2a$10$Mxma0Mw8kxpGkJXobO5CuO9PdfN0bRVucIlnLZw.AOFstmzoZM9DO', 'thai', '2023-05-01 21:40:24', null, null, '/images/248b3a31-dc0d-4fd6-affb-dfd61b914a52.png', '2001-12-22 00:00:00');
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('AnoxPIx4Ab', 'le', 'thanh', '$2a$10$ulQ2jhrcRo5GuU/qamPH6.RcX5XRO286kJY73WS5PdEF.lFNNPdfu', 'ddddd', '2023-03-24 09:45:50', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('bw70cL4bzo', 'Nam', 'Khanh', '$2a$10$QeBGg2bWOft6cYRz8BoLfeLXl/JI0G5VbtDWBfz37BMPppn90j/6y', 'khanh23', '2023-03-10 10:03:30', '0982233456', null, '/images/4e20ef35-a7be-4185-8bcc-d839400536c0.jpg', null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('GmL1YVZ188', 'Lập', 'Nguyễn', '$2a$10$5ZctqxpxknQJbeVVgLEXzuga5/JZTKqt4fqjW48CYeMGsjhEv8zIe', 'hacknicktaoah3', '2023-04-25 21:56:57', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('HqtErUIkhb', 'Nam', 'Anh', '$2a$10$I1BYVXc0pKf2cfhRut0jpuPg8PrTIUDqaIans67/SCv86LJfqECGa', 'bimbim234', '2023-03-13 08:12:33', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('S8qZgnGJUW', 'Nam', 'Truong', '$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi', 'truong', '2023-03-06 16:38:24', '0324456655', 'Thanh Ba Phú Thọ', '/images/69f25176-c963-4ce2-9db4-94c8ad76c6ea.png', '2001-04-10 15:08:33');
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('SmadmnCo7R', 'thanh', 'le', '$2a$10$YWp1cuD82UBOjO5RmJwsD.XIhye5ACHpTs91hhKYloanBhlYVpm3O', 'thanhle', '2023-03-24 09:48:01', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('VWgA6g15xk', 'Nam', 'BIN', '$2a$10$l6KWBGmzGPHhtIH/ifxdb.m4bW1txMLCtjBbIwnJG0585uUYqeJTm', 'xxxin', '2023-03-24 09:16:42', null, null, null, null);
insert into user (id, first_name, last_name, password, username, created_date, phone_number, address, avatarurl, dob) values ('xcsFASDs', 'Nam ', 'Truong', '$2a$10$mtMjPASHPozA8rzS5JX/EuxkeGXsCiDssKcPZUn7DY5RGJNcFaiKi', 'truongAdmin', '2023-03-11 21:48:02', '0987654321', null, null, null);

insert into user_role (user_id, role_id) values ('1KoJFShiwH', 1);
insert into user_role (user_id, role_id) values ('7jGmZkC8co', 1);
insert into user_role (user_id, role_id) values ('AnoxPIx4Ab', 1);
insert into user_role (user_id, role_id) values ('bw70cL4bzo', 1);
insert into user_role (user_id, role_id) values ('GmL1YVZ188', 1);
insert into user_role (user_id, role_id) values ('HqtErUIkhb', 1);
insert into user_role (user_id, role_id) values ('S8qZgnGJUW', 1);
insert into user_role (user_id, role_id) values ('SmadmnCo7R', 1);
insert into user_role (user_id, role_id) values ('VWgA6g15xk', 1);
insert into user_role (user_id, role_id) values ('xcsFASDs', 2);
insert into user_role (user_id, role_id) values ('xcsFASDs', 3);

insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('2h4Ka17v8Y', 'PENDING', 7859900, 'S8qZgnGJUW', '2023-04-21 10:06:35', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('3RNbYnQ1Sk', 'DELIVERING', 359900, 'S8qZgnGJUW', '2023-04-20 22:46:54', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('4ITbIVFNjT', 'PENDING', 2787780, 'S8qZgnGJUW', '2023-04-24 15:25:30', 'Số 3 ngõ 12 Nặc', '0976554321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Mã');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('5KAMYHSMyQ', 'CANCEL', 7500000, 'S8qZgnGJUW', '2023-04-22 18:45:37', '312 Kim Giang', '0987654321', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('6icvl6AOGa', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:42:23', 'Trường', '0987137433', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('9G9jpyEBUj', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:26:10', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('9GoclfQGDa', 'PENDING', 832800, 'GmL1YVZ188', '2023-04-25 21:57:25', 'Mỹ Đình pearl', '0365000282', 'Thị xã Phú Thọ', 'Tỉnh Phú Thọ', 'Phường Phong Châu');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('bq6PRzvpWw', 'PENDING', 580080, 'S8qZgnGJUW', '2023-04-22 09:19:00', '324 T', '097623443', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Bqi008PmHj', 'CANCEL', 2669760, 'S8qZgnGJUW', '2023-04-20 21:16:39', '312 Kim Giang, Hoang Mai', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('DtxSzeteaq', 'PENDING', 4559200, 'S8qZgnGJUW', '2023-04-29 00:55:30', '333 Thanh Mai', '0987654321', 'Huyện Yên Minh', 'Tỉnh Hà Giang', 'Xã Sủng Tráng');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('fbPrvw3kVL', 'CANCEL', 2820620, 'S8qZgnGJUW', '2023-04-24 09:42:07', '', '', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('FnRBimsKnj', 'COMPLETE', 760300, 'S8qZgnGJUW', '2023-04-20 22:41:20', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('IKiwi7YZdX', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:20:26', '', '', 'Huyện Bảo Lạc', 'Huyện Bảo Lạc', 'Xã Bảo Toàn');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('jbpuID4hNi', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:27:43', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('kRIjyfij06', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:40:07', '0987654321', '0987654321', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('lKG9VFQBKT', 'PENDING', 3557000, 'S8qZgnGJUW', '2023-04-30 21:21:29', '111 Tôn Thất thuyết', '0987776543', 'Quận Tây Hồ', 'Thành phố Hà Nội', 'Phường Quảng An');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('MA5HldvK8h', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:37:05', '312 Tôn Thất Thuyết', '0986543321', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('O2QINqWl6v', 'CANCEL', 2820620, 'S8qZgnGJUW', '2023-04-24 15:00:29', '333 Nan', '098543221', 'Huyện Yên Sơn', 'Tỉnh Tuyên Quang', 'Xã Trung Minh');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('ogXM03GSj5', 'COMPLETE', 593000, 'S8qZgnGJUW', '2023-03-20 14:42:08', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('OOQdPkNJHU', 'PENDING', 2774540, 'S8qZgnGJUW', '2023-04-22 18:38:24', '312 Kim Guiang', '0985664443', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pHIM5dpi7p', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:21:23', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Huyện Chiêm Hóa', 'Xã Hà Lang');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pMisRqf2jC', 'COMPLETE', 340000, 'S8qZgnGJUW', '2023-03-11 19:31:16', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('pYqeawtclV', 'PENDING', 583200, 'S8qZgnGJUW', '2023-04-25 13:19:39', '333 Thanh Đô', '0987654321', 'Quận Hoàn Kiếm', 'Thành phố Hà Nội', 'Phường Hàng Buồm');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('q49ZzRP6ws', 'PENDING', 3121100, 'bw70cL4bzo', '2023-04-29 01:02:30', 'Thanh Mai 123', '0987654321', 'Huyện Mèo Vạc', 'Tỉnh Hà Giang', 'Xã Pả Vi');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('qpL0TK6eCe', 'CANCEL', 828000, 'bw70cL4bzo', '2023-03-11 19:31:20', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('qWPdxpPlRS', 'PENDING', 2820620, 'S8qZgnGJUW', '2023-04-24 14:28:30', 'Ngách 14 Thượng Láng', '0976543321', 'Huyện Chiêm Hóa', 'Tỉnh Tuyên Quang', 'Xã Hà Lang');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('rJqNx6kpJt', 'PENDING', 7500000, 'S8qZgnGJUW', '2023-04-21 10:06:48', '124 Hoàn Kiếm', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('UhHeUtNxvn', 'PENDING', 1513500, 'bw70cL4bzo', '2023-03-13 15:37:52', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Vnnmbclpeu', 'COMPLETE', 1475000, 'S8qZgnGJUW', '2023-03-20 10:40:18', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('vrJkrbMiUl', 'PENDING', 1365480, 'S8qZgnGJUW', '2023-04-24 15:36:19', 'Bô 12', '0987776432', 'Huyện Đồng Văn', 'Tỉnh Hà Giang', 'Xã Lũng Táo');
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('x7Ml8AWbNc', 'CANCEL', 2780000, 'S8qZgnGJUW', '2023-02-03 19:31:22', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Xxph7C7sCn', 'COMPLETE', 1475000, 'S8qZgnGJUW', '2023-03-20 11:17:20', null, null, null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('Yaloz0nSVw', 'CANCEL', 2858060, 'S8qZgnGJUW', '2023-04-20 22:15:54', '312 Kim Giang, Hoang Mai', '0987143522', null, null, null);
insert into order (id, status, total_money, user_id, created_date, address, phone_number, district, province, wards) values ('yXPTgylYi8', 'PENDING', 2001000, 'S8qZgnGJUW', '2023-04-25 21:48:40', 'Mỹ Đình pearl', '0365000282', 'Huyện Yên Minh', 'Tỉnh Hà Giang', 'Xã Mậu Duệ');

insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (10, 4, 'x7Ml8AWbNc', 'Al2fwjVbcv', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (11, 1, 'x7Ml8AWbNc', 'dsfsdffd', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (13, 4, 'pMisRqf2jC', 'sdfsdfsdf', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (14, 1, 'pMisRqf2jC', 'dsfsdffd', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (15, 4, 'qpL0TK6eCe', 'sdfsdfsdf', 8);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (17, 4, 'UhHeUtNxvn', 'zoiuv8krdt', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (18, 5, 'UhHeUtNxvn', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (19, 2, 'Vnnmbclpeu', 'ObKzjdfXhZ', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (20, 1, 'Vnnmbclpeu', 'Al2fwjVbcv', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (21, 2, 'Xxph7C7sCn', 'ObKzjdfXhZ', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (22, 1, 'Xxph7C7sCn', 'Al2fwjVbcv', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (23, 1, 'ogXM03GSj5', 'zoiuv8krdt', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (24, 1, 'ogXM03GSj5', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (25, 4, 'Bqi008PmHj', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (26, 2, 'Bqi008PmHj', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (27, 4, 'Yaloz0nSVw', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (28, 2, 'Yaloz0nSVw', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (29, 1, 'Yaloz0nSVw', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (30, 4, 'FnRBimsKnj', 'zoiuv8krdt', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (31, 1, 'FnRBimsKnj', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (32, 2, '3RNbYnQ1Sk', 'zoiuv8krdt', 18);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (33, 1, '3RNbYnQ1Sk', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (34, 2, '2h4Ka17v8Y', 'zoiuv8krdt', 18);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (35, 1, '2h4Ka17v8Y', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (36, 15, '2h4Ka17v8Y', 'B9dpNp9HN5', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (37, 15, 'rJqNx6kpJt', 'B9dpNp9HN5', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (38, 1, 'bq6PRzvpWw', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (39, 1, 'bq6PRzvpWw', 'newsdsd', 12);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (40, 3, 'MA5HldvK8h', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (41, 1, 'MA5HldvK8h', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (42, 2, 'MA5HldvK8h', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (43, 1, 'MA5HldvK8h', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (44, 3, 'OOQdPkNJHU', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (45, 1, 'OOQdPkNJHU', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (46, 2, 'OOQdPkNJHU', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (47, 1, 'OOQdPkNJHU', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (48, 3, 'kRIjyfij06', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (49, 1, 'kRIjyfij06', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (50, 2, 'kRIjyfij06', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (51, 1, 'kRIjyfij06', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (52, 3, '6icvl6AOGa', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (53, 1, '6icvl6AOGa', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (54, 2, '6icvl6AOGa', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (55, 1, '6icvl6AOGa', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (56, 15, '5KAMYHSMyQ', 'B9dpNp9HN5', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (57, 4, 'fbPrvw3kVL', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (58, 2, 'fbPrvw3kVL', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (59, 1, 'fbPrvw3kVL', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (69, 4, 'IKiwi7YZdX', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (70, 2, 'IKiwi7YZdX', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (71, 1, 'IKiwi7YZdX', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (72, 4, 'pHIM5dpi7p', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (73, 2, 'pHIM5dpi7p', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (74, 1, 'pHIM5dpi7p', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (75, 4, '9G9jpyEBUj', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (76, 2, '9G9jpyEBUj', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (77, 1, '9G9jpyEBUj', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (78, 4, 'jbpuID4hNi', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (79, 2, 'jbpuID4hNi', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (80, 1, 'jbpuID4hNi', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (81, 4, 'qWPdxpPlRS', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (82, 2, 'qWPdxpPlRS', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (83, 1, 'qWPdxpPlRS', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (84, 4, 'O2QINqWl6v', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (85, 2, 'O2QINqWl6v', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (86, 1, 'O2QINqWl6v', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (87, 1, '4ITbIVFNjT', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (88, 1, '4ITbIVFNjT', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (89, 1, '4ITbIVFNjT', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (90, 1, '4ITbIVFNjT', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (91, 1, '4ITbIVFNjT', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (92, 1, '4ITbIVFNjT', 'FUBsefe43', 9);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (93, 1, 'vrJkrbMiUl', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (94, 1, 'vrJkrbMiUl', 'K8BLdrr58I', 15);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (95, 1, 'vrJkrbMiUl', 'CdBlInu3d4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (96, 1, 'pYqeawtclV', 'K8BLdrr58I', 17);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (97, 1, 'pYqeawtclV', 'newsdsd', 12);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (98, 1, 'pYqeawtclV', 'zoiuv8krdt', 18);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (99, 3, 'yXPTgylYi8', 'newsdsd', 12);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (100, 4, 'yXPTgylYi8', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (101, 1, 'yXPTgylYi8', 'zoiuv8krdt', 18);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (102, 1, 'yXPTgylYi8', 'FUBsefe43', 9);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (103, 1, '9GoclfQGDa', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (104, 1, '9GoclfQGDa', 'K8BLdrr58I', 17);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (105, 4, 'DtxSzeteaq', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (106, 4, 'DtxSzeteaq', 'K8BLdrr58I', 17);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (107, 5, 'DtxSzeteaq', 'sdfsdfsdf', 8);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (108, 3, 'DtxSzeteaq', 'dsfsdffd', 7);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (109, 1, 'DtxSzeteaq', 'ObKzjdfXhZ', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (110, 1, 'q49ZzRP6ws', 'K8BLdrr58I', 17);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (111, 1, 'q49ZzRP6ws', '9jf3u6i0bm', 16);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (112, 1, 'q49ZzRP6ws', 'NhDvPJvkRC', 10);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (113, 6, 'q49ZzRP6ws', 'afcmXiVUWT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (114, 1, 'q49ZzRP6ws', 'dsfsdffd', 7);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (115, 1, 'lKG9VFQBKT', 'xIRCvIkIPw', 19);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (116, 3, 'lKG9VFQBKT', 'Xp5jCMsVLe', 20);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (117, 3, 'lKG9VFQBKT', 'eWHhzSPZn4', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (118, 1, 'lKG9VFQBKT', '4IZ7OT7jTT', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (119, 1, 'lKG9VFQBKT', 'wv5i1EpuKs', null);
insert into order_detail (id, quantity, order_id, product_id, discount_product_id) values (120, 3, 'lKG9VFQBKT', 'kNKLovjTHf', null);

insert into order_history (id, date, history_order_status, info, order_id, user_id) values (3, '2023-03-20 10:40:18', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Vnnmbclpeu', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (5, '2023-03-20 10:51:38', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị FastNinja', 'x7Ml8AWbNc', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (6, '2023-03-20 11:17:20', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Xxph7C7sCn', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (9, '2023-03-20 14:42:08', 'PENDING', 'Nguời dùng đặt hàng thành công', 'ogXM03GSj5', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (10, '2023-03-20 14:43:14', 'COMPLETE', 'Order đã đc hoàn thành', 'ogXM03GSj5', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (11, '2023-03-20 14:43:39', 'COMPLETE', 'Order đã đc hoàn thành', 'Xxph7C7sCn', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (12, '2023-03-20 14:43:52', 'COMPLETE', 'Order đã đc hoàn thành', 'Vnnmbclpeu', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (13, '2023-03-21 21:06:08', 'COMPLETE', 'Order đã được gửi đến địa chỉ', 'x7Ml8AWbNc', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (14, '2023-04-20 21:16:39', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Bqi008PmHj', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (16, '2023-04-20 22:15:54', 'PENDING', 'Nguời dùng đặt hàng thành công', 'Yaloz0nSVw', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (20, '2023-04-20 22:33:41', 'CANCEL', 'Tao thích', 'Bqi008PmHj', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (21, '2023-04-20 22:41:20', 'PENDING', 'Nguời dùng đặt hàng thành công', 'FnRBimsKnj', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (22, '2023-04-20 22:44:49', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị SLow', 'FnRBimsKnj', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (23, '2023-04-20 22:46:54', 'PENDING', 'Nguời dùng đặt hàng thành công', '3RNbYnQ1Sk', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (24, '2023-04-21 10:06:35', 'PENDING', 'Nguời dùng đặt hàng thành công', '2h4Ka17v8Y', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (25, '2023-04-21 10:06:48', 'PENDING', 'Nguời dùng đặt hàng thành công', 'rJqNx6kpJt', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (26, '2023-04-21 10:30:05', 'CANCEL', 'Test huy don hang backend ma van giu nguyen trang', 'x7Ml8AWbNc', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (27, '2023-04-21 11:59:17', 'COMPLETE', 'Đơn hàng đã được hoàn thành', 'FnRBimsKnj', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (28, '2023-04-21 12:00:17', 'DELIVERING', 'Đơn hàng đang được vận chuyển bởi đơn vị NinjaTurtle', '3RNbYnQ1Sk', 'xcsFASDs');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (29, '2023-04-22 09:19:00', 'PENDING', 'Nguời dùng đặt hàng thành công', 'bq6PRzvpWw', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (30, '2023-04-22 18:37:05', 'PENDING', 'Nguời dùng đặt hàng thành công', 'MA5HldvK8h', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (31, '2023-04-22 18:38:24', 'PENDING', 'Nguời dùng đặt hàng thành công', 'OOQdPkNJHU', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (32, '2023-04-22 18:40:07', 'PENDING', 'Nguời dùng đặt hàng thành công', 'kRIjyfij06', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (33, '2023-04-22 18:42:23', 'PENDING', 'Nguời dùng đặt hàng thành công', '6icvl6AOGa', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (34, '2023-04-22 18:45:37', 'PENDING', 'Nguời dùng đặt hàng thành công', '5KAMYHSMyQ', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (35, '2023-04-22 18:59:18', 'CANCEL', 'Tao thích', '5KAMYHSMyQ', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (36, '2023-04-24 09:42:07', 'PENDING', 'Nguời dùng đặt hàng thành công', 'fbPrvw3kVL', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (40, '2023-04-24 14:20:26', 'PENDING', 'Nguời dùng đặt hàng thành công', 'IKiwi7YZdX', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (41, '2023-04-24 14:21:23', 'PENDING', 'Nguời dùng đặt hàng thành công', 'pHIM5dpi7p', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (42, '2023-04-24 14:26:10', 'PENDING', 'Nguời dùng đặt hàng thành công', '9G9jpyEBUj', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (43, '2023-04-24 14:27:43', 'PENDING', 'Nguời dùng đặt hàng thành công', 'jbpuID4hNi', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (44, '2023-04-24 14:28:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'qWPdxpPlRS', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (45, '2023-04-24 15:00:29', 'PENDING', 'Nguời dùng đặt hàng thành công', 'O2QINqWl6v', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (46, '2023-04-24 15:25:30', 'PENDING', 'Nguời dùng đặt hàng thành công', '4ITbIVFNjT', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (48, '2023-04-24 15:36:19', 'PENDING', 'Nguời dùng đặt hàng thành công', 'vrJkrbMiUl', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (49, '2023-04-25 13:19:39', 'PENDING', 'Nguời dùng đặt hàng thành công', 'pYqeawtclV', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (50, '2023-04-25 13:42:55', 'CANCEL', 'Tao cứ thích', 'O2QINqWl6v', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (51, '2023-04-25 13:43:16', 'CANCEL', 'Tao thích again', 'Yaloz0nSVw', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (52, '2023-04-25 21:48:40', 'PENDING', 'Nguời dùng đặt hàng thành công', 'yXPTgylYi8', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (53, '2023-04-25 21:57:25', 'PENDING', 'Nguời dùng đặt hàng thành công', '9GoclfQGDa', 'GmL1YVZ188');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (54, '2023-04-29 00:55:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'DtxSzeteaq', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (55, '2023-04-29 01:02:30', 'PENDING', 'Nguời dùng đặt hàng thành công', 'q49ZzRP6ws', 'bw70cL4bzo');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (56, '2023-04-30 17:52:45', 'CANCEL', 'Tôi không thích', 'fbPrvw3kVL', 'S8qZgnGJUW');
insert into order_history (id, date, history_order_status, info, order_id, user_id) values (57, '2023-04-30 21:21:29', 'PENDING', 'Nguời dùng đặt hàng thành công', 'lKG9VFQBKT', 'S8qZgnGJUW');

insert into comment_and_rate (id, created_date, score, text, product_id, user_id) values (1, '2023-04-07 09:14:02', 4, 'Sản phẩm quá tuyệt vời, 100 điểm', 'Al2fwjVbcv', 'S8qZgnGJUW');
insert into comment_and_rate (id, created_date, score, text, product_id, user_id) values (2, '2023-04-07 17:23:57', 3, 'Sản phẩm đẹp nhưng hơi mùi', 'Al2fwjVbcv', 'S8qZgnGJUW');
insert into comment_and_rate (id, created_date, score, text, product_id, user_id) values (3, '2023-04-07 17:24:27', 1, 'Lừa đảo vcl', 'Al2fwjVbcv', null);
insert into comment_and_rate (id, created_date, score, text, product_id, user_id) values (4, '2023-04-09 21:56:18', 4, 'cũng được', 'Al2fwjVbcv', null);

insert into comment_and_rate_comment_image (comment_and_rate_id, comment_image_id) values (1, 1);
insert into comment_and_rate_comment_image (comment_and_rate_id, comment_image_id) values (1, 2);

insert into comment_image (id, url) values (1, '/images/e43c8cdc-976c-48df-9901-fc30626af182.jpeg');
insert into comment_image (id, url) values (2, '/images/a78c2fef-683c-457d-abb1-50802c2d4c93.png');
