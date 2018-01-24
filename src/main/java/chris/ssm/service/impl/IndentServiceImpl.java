package chris.ssm.service.impl;

import chris.ssm.dao.IndentDao;
import chris.ssm.model.Indent;
import chris.ssm.service.IndentService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class IndentServiceImpl implements IndentService {

    @Resource
    private IndentDao indentDao;

    public void registerIndent(Indent indent) {
        indentDao.registerIndent(indent);

    }

    public List<Indent> selectIndentByUserId_IndentNum_Month(Long userId, String indentNum, String month) {
        return indentDao.selectIndentByUserId_IndentNum_Month(userId,indentNum,month);
    }

    public Indent selectIndentById(Long indentId) {
        return indentDao.selectIndentById(indentId);
    }

    public void updateIndent(Indent indent) {
        indentDao.updateIndent(indent);
    }

    public void deleteIndentById(Long indentId) {
        indentDao.deleteIndentById(indentId);
    }
}
