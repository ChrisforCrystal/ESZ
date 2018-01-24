package chris.ssm.dao;

import chris.ssm.model.Indent;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IndentDao {

    void registerIndent(Indent indent);

    List<Indent> selectIndentByUserId_IndentNum_Month(@Param("userId") Long userId,@Param("indentNum") String indentNum,@Param("month") String month);

    Indent selectIndentById(@Param("indentId") Long indentId);

    void  updateIndent(Indent indent);

   void  deleteIndentById(@Param("indentId") Long indentId);


}
