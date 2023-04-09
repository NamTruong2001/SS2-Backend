package com.ss2fit.ss2backend.Controller;

import com.ss2fit.ss2backend.DTO.CommentCreation;
import com.ss2fit.ss2backend.Service.CommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.validation.Valid;
import java.util.List;
import java.util.stream.Collectors;

@RestController
@RequestMapping("/api/comment")
public class CommentController {
    @Autowired
    CommentService commentService;

    @PostMapping(value = "/create", consumes = MediaType.MULTIPART_FORM_DATA_VALUE)
    @PreAuthorize("hasAuthority('USER')")
    public ResponseEntity create(@ModelAttribute CommentCreation createComment,
                                 BindingResult bindingResult,
                                 @RequestParam("images") List<MultipartFile> images) {
        try {
            if (bindingResult.hasErrors()) {
                // return bad request with error messages
                List<String> errors = bindingResult.getAllErrors()
                        .stream()
                        .map(ObjectError::toString)
                        .collect(Collectors.toList());
                return ResponseEntity.badRequest().body(errors);
            }
            return ResponseEntity.ok(commentService.save(createComment, images));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }


    @GetMapping("/product/{id}")
    public ResponseEntity getCommentsProduct(@PathVariable("id") String id,
                                            @RequestParam(defaultValue = "0") Integer page,
                                            @RequestParam(defaultValue = "10") Integer size,
                                            @RequestParam(defaultValue = "createdDate") String sort,
                                            @RequestParam(defaultValue = "desc") String sortOrder) {
        try {
            return ResponseEntity.ok(commentService.getCommentsByProduct(id, page, size, sort, sortOrder));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("/overall/{id}")
    public ResponseEntity getOverall(@PathVariable("id") String id) {
        try {
            return ResponseEntity.ok(commentService.getOverallScore(id));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }
    }

    @GetMapping("/product/{id}/score")
    public ResponseEntity getCommentsByScore(@RequestParam("numb") Integer score,
                                             @PathVariable("id") String id,
                                             @RequestParam(defaultValue = "0") Integer page,
                                             @RequestParam(defaultValue = "10") Integer size,
                                             @RequestParam(defaultValue = "createdDate") String sort,
                                             @RequestParam(defaultValue = "desc") String sortOrder) {
        try {
            return ResponseEntity.ok(commentService.getCommentsByProductAndScore(id, score, page, size, sort, sortOrder));
        } catch (Exception e) {
            return ResponseEntity.badRequest().body(e.getMessage());
        }

    }


}
