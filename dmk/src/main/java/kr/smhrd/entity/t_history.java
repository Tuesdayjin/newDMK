package kr.smhrd.entity;

import java.util.Date;

import lombok.Data;

@Data
public class t_history {

    // 게시물번호. 게시물번호
    private Long h_num;

    // 제목. 제목
    private String id;

    // 작성일시. 작성일시
    private Date h_indate;

    // 첨부파일. 첨부파일
    private String h_kind;
    
    // 닉네임. 닉네임
    private String h_value;
    
    // 프로필 이미지 
    private String h_comment;

}