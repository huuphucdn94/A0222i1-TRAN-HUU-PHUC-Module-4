package codegym.service.Impl;

import codegym.model.Song;
import codegym.repository.ISongRepository;
import codegym.service.ISongService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class SongServiceImpl implements ISongService {

    @Autowired
    private ISongRepository iSongRepository;

    @Override
    public List<Song> findAll() {
        return iSongRepository.findAll();
    }

    @Override
    public Song findById(long id) {
        return iSongRepository.findById(id).orElse(null);
    }

    @Override
    public void save(Song song) {
        iSongRepository.save(song);

    }

    @Override
    public void delete(long id) {
        iSongRepository.deleteById(id);
    }
}
