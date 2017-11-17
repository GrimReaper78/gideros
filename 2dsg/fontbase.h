#ifndef FONTBASE_H
#define FONTBASE_H

#include <refptr.h>
#include <wchar32.h>
#include <vector>

class Application;
class GraphicsBase;


class FontBase : public GReferenced
{
public:
    FontBase(Application *application) : application_(application)
	{
	}

    virtual ~FontBase()
    {
    }

	enum Type
	{
		eFont,
		eTTFont,
        eTTBMFont,
	};

    virtual void getBounds(const char *text, float letterSpacing, float *minx, float *miny, float *maxx, float *maxy) = 0;
    virtual float getAdvanceX(const char *text, float letterSpacing, int size = -1) = 0;
    virtual float getAscender() = 0;
    virtual float getLineHeight() = 0;

	virtual Type getType() const = 0;

	struct FontSpec {
		std::string filename;
		float sizeMult;
	};

#define TEXTSTYLEFLAG_COLOR	1
	struct ChunkLayout {
		std::string text;
		float x,y;
		float w,h;
		float dx,dy;
		int line;
		char sep;
		//Styling
		int styleFlags;
		unsigned int color;
	};
	struct TextLayout {
		float x,y;
		float w,h;
		int lines;
		int styleFlags;
		std::vector<struct ChunkLayout> parts;
	};

	enum TextLayoutFlags {
		TLF_LEFT=0,
		TLF_RIGHT=1,
		TLF_CENTER=2,
		TLF_JUSTIFIED=4,
		TLF_TOP=0,
		TLF_BOTTOM=8,
		TLF_VCENTER=16,
		TLF_NOWRAP=32,
		TLF_RTL=64,
        TLF_REF_BASELINE=0,
        TLF_REF_TOP=128,
        TLF_REF_MIDDLE=256,
        TLF_REF_BOTTOM=512
	};

	struct TextLayoutParameters {
		TextLayoutParameters() : w(0),h(0),flags(TLF_NOWRAP),letterSpacing(0),lineSpacing(0),tabSpace(4) {};
		float w,h;
		int flags;
		float letterSpacing;
		float lineSpacing;
		float tabSpace;
	};
	virtual TextLayout layoutText(const char *text, TextLayoutParameters *params);
protected:
    Application *application_;
};

class BMFontBase : public FontBase
{
public:
    BMFontBase(Application *application) : FontBase(application)
    {
    }

    virtual void drawText(std::vector<GraphicsBase> *graphicsBase, const char *text, float r, float g, float b, TextLayoutParameters *layout, bool hasSample, float minx, float miny) = 0;
};


#endif
