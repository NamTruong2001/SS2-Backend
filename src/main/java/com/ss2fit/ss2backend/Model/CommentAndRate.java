package com.ss2fit.ss2backend.Model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;

import javax.persistence.*;
import java.util.Date;
import java.util.List;

@Entity
@Data
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class CommentAndRate {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Lob
    private String text;
    @JsonProperty("images")
    @OneToMany(cascade = CascadeType.ALL)
    private List<CommentImage> commentImage;
    private int score;
    @ManyToOne
    private User user;
    private Date createdDate;
    @ManyToOne
    @JsonIgnore
    private Product product;

    public void setScore(int value) {
        if (value < 1 || value > 5) {
            throw new IllegalArgumentException("Rating value must be 1, 2, 3, 4, or 5");
        }
        this.score = value;
    }
}
