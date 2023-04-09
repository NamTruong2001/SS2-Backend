package com.ss2fit.ss2backend.DTO;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.Size;
import java.util.ArrayList;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Data
public class CommentCreation {
    @Size(min = 1, message = "{validation.text.size.too_short}")
    @Size(max = 250, message = "{validation.text.size.too_long}")
    private String text;
    private String product;
    @Min(value = 1)
    @Max(value = 5)
    private String rate;
}
