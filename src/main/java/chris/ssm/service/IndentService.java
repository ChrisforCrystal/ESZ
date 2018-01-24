package chris.ssm.service;

import chris.ssm.model.Indent;

import java.util.List;

public interface IndentService {

    void registerIndent(Indent indent);

    List<Indent> selectIndentByUserId_IndentNum_Month( Long userId,  String indentNum,  String month);

    Indent selectIndentById(Long indentId);

    void  updateIndent(Indent indent);

    void  deleteIndentById( Long indentId);

}
