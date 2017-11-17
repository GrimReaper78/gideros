#ifndef TTBMFONT_H
#define TTBMFONT_H

#include <fontbase.h>
#include <wchar32.h>
#include <map>
#include <texturepacker.h>
#include <dib.h>
#include <string>
#include <vector>

#include <ft2build.h>
#include FT_FREETYPE_H

class GStatus;
class GraphicsBase;
struct TextureData;

class TTBMFont : public BMFontBase
{
public:
    TTBMFont(Application *application, std::vector<FontSpec> filenames, float size, const char *chars, float filtering, GStatus *status);
    virtual ~TTBMFont();

    virtual Type getType() const
    {
        return eTTBMFont;
    }

    virtual void drawText(std::vector<GraphicsBase> *graphicsBase, const char *text, float r, float g, float b, TextLayoutParameters *layout, bool hasSample, float minx, float miny);

    virtual void getBounds(const char *text, float letterSpacing, float *minx, float *miny, float *maxx, float *maxy);
    virtual float getAdvanceX(const char *text, float letterSpacing, int size = -1);
    virtual float getAscender();
    virtual float getLineHeight();

private:
    void constructor(std::vector<FontSpec> filenames, float size, const char *chars, float filtering);
    int kerning(wchar32_t left, wchar32_t right) const;
    bool addGlyph(const wchar32_t chr);
    void ensureChars(const wchar32_t *text, int size);
    bool staticCharsetInit();
    void checkLogicalScale();

private:
    struct TextureGlyph
    {
        wchar32_t chr;
        FT_UInt glyphIndex;
        FT_Face face;
        int x, y;
        int width, height;
        int left, top;
        int advancex, advancey;
        unsigned int texture;
    };

    struct FontInfo
    {
        int height;
        int ascender;
        int descender;
        std::map<wchar32_t, TextureGlyph> textureGlyphs;
        std::map<std::pair<wchar32_t, wchar32_t>, int> kernings;
    };

    struct FontFace
    {
        FT_Face face;
        FT_StreamRec stream;
        float sizeMult;
    };

    std::vector<TextureData *> textureData_;
    TexturePacker *currentPacker_;
    Dib *currentDib_;
    float filtering_;
    std::vector<FontFace> fontFaces_;
    std::string charset_;

    FontInfo fontInfo_;

    float sizescalex_;
    float sizescaley_;
    float uvscalex_;
    float uvscaley_;
    float defaultSize_;
    float currentLogicalScaleX_,currentLogicalScaleY_;

};

#endif
