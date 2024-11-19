.class public final Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;
.super Ljava/lang/Object;
.source "RenderThemeHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    }
.end annotation


# static fields
.field private static final ELEMENT_NAME_RULE:Ljava/lang/String; = "rule"

.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final UNEXPECTED_ELEMENT:Ljava/lang/String; = "unexpected element: "

.field private static xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;


# instance fields
.field private categories:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

.field private currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

.field private final displayModel:Lorg/mapsforge/map/model/DisplayModel;

.field private final elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;",
            ">;"
        }
    .end annotation
.end field

.field private final graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

.field private level:I

.field private final pullParser:Lorg/xmlpull/v1/XmlPullParser;

.field private qName:Ljava/lang/String;

.field private final relativePathPrefix:Ljava/lang/String;

.field private renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

.field private renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

.field private final ruleStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lorg/mapsforge/map/rendertheme/rule/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private symbols:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;",
            ">;"
        }
    .end annotation
.end field

.field private final xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 58
    const-class v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->LOGGER:Ljava/util/logging/Logger;

    .line 61
    const/4 v0, 0x0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-void
.end method

.method private constructor <init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p2, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p3, "relativePathPrefix"    # Ljava/lang/String;
    .param p4, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .param p5, "pullParser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    .line 101
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->symbols:Ljava/util/Map;

    .line 110
    iput-object p5, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    .line 111
    iput-object p1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    .line 112
    iput-object p2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    .line 113
    iput-object p3, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->relativePathPrefix:Ljava/lang/String;

    .line 114
    iput-object p4, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    .line 115
    return-void
.end method

.method private checkElement(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V
    .locals 4
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "element"    # Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 331
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$1;->$SwitchMap$org$mapsforge$map$rendertheme$rule$RenderThemeHandler$Element:[I

    invoke-virtual {p2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "unexpected element: "

    packed-switch v0, :pswitch_data_0

    .line 355
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown enum value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 352
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    if-ne v0, v2, :cond_0

    .line 349
    return-void

    .line 347
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :pswitch_2
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    .line 340
    .local v0, "parentElement":Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    if-eq v0, v2, :cond_2

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 341
    :cond_1
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 343
    :cond_2
    :goto_0
    return-void

    .line 333
    .end local v0    # "parentElement":Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    :pswitch_3
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 336
    return-void

    .line 334
    :cond_3
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V
    .locals 1
    .param p1, "elementName"    # Ljava/lang/String;
    .param p2, "element"    # Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 359
    invoke-direct {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkElement(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 360
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    return-void
.end method

.method private endDocument()V
    .locals 2

    .line 137
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    if-eqz v0, :cond_0

    .line 141
    iget v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->setLevels(I)V

    .line 142
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->complete()V

    .line 143
    return-void

    .line 138
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "missing element: rules"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private endElement()V
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 150
    const-string v0, "rule"

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-direct {p0, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/rule/Rule;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v0, v1}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->addRule(Lorg/mapsforge/map/rendertheme/rule/Rule;)V

    goto :goto_0

    .line 157
    :cond_0
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/rendertheme/rule/Rule;

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    goto :goto_0

    .line 159
    :cond_1
    const-string v0, "stylemenu"

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    invoke-interface {v0}, Lorg/mapsforge/map/rendertheme/XmlRenderTheme;->getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlRenderTheme:Lorg/mapsforge/map/rendertheme/XmlRenderTheme;

    invoke-interface {v0}, Lorg/mapsforge/map/rendertheme/XmlRenderTheme;->getMenuCallback()Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;

    move-result-object v0

    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    invoke-interface {v0, v1}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeMenuCallback;->getCategories(Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    .line 167
    :cond_2
    return-void

    .line 170
    :cond_3
    :goto_0
    return-void
.end method

.method public static getRenderTheme(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;)Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    .locals 8
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p2, "xmlRenderTheme"    # Lorg/mapsforge/map/rendertheme/XmlRenderTheme;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getXmlPullParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 67
    .local v0, "pullParser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;

    .line 68
    invoke-interface {p2}, Lorg/mapsforge/map/rendertheme/XmlRenderTheme;->getRelativePathPrefix()Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/XmlRenderTheme;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 69
    .local v1, "renderThemeHandler":Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;
    const/4 v2, 0x0

    .line 71
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p2}, Lorg/mapsforge/map/rendertheme/XmlRenderTheme;->getRenderThemeAsStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v2, v3

    .line 72
    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->processRenderTheme()V

    .line 74
    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 74
    return-object v3

    .line 76
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lorg/mapsforge/core/util/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 77
    throw v3
.end method

.method private getStringAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 364
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 365
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 366
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 367
    iget-object v2, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 365
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getXmlPullParserFactory()Lorg/xmlpull/v1/XmlPullParserFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 81
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 84
    :cond_0
    sget-object v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    return-object v0
.end method

.method private isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z
    .locals 2
    .param p1, "renderInstruction"    # Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    .line 374
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->getCategory()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    .line 375
    invoke-virtual {p1}, Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 374
    :goto_1
    return v0
.end method

.method private isVisible(Lorg/mapsforge/map/rendertheme/rule/Rule;)Z
    .locals 2
    .param p1, "rule"    # Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 381
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lorg/mapsforge/map/rendertheme/rule/Rule;->cat:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    iget-object v1, p1, Lorg/mapsforge/map/rendertheme/rule/Rule;->cat:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static setXmlPullParserFactory(Lorg/xmlpull/v1/XmlPullParserFactory;)V
    .locals 0
    .param p0, "xmlPullParserFactory"    # Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 88
    sput-object p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->xmlPullParserFactory:Lorg/xmlpull/v1/XmlPullParserFactory;

    .line 89
    return-void
.end method

.method private startElement()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 173
    move-object/from16 v1, p0

    const-string v0, "magnitude"

    const-string v2, "zoom-max"

    const-string v3, "zoom-min"

    const-string v4, "enabled"

    const-string v5, "cat"

    const-string v6, "layer"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    .line 176
    :try_start_0
    const-string v8, "rendertheme"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 177
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDER_THEME:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 178
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;

    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeBuilder;->build()Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    move-result-object v0

    iput-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    goto/16 :goto_4

    .line 179
    :cond_0
    const-string v7, "rule"

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 180
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 181
    new-instance v0, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;

    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-direct {v0, v2, v3, v4}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Stack;)V

    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/rule/RuleBuilder;->build()Lorg/mapsforge/map/rendertheme/rule/Rule;

    move-result-object v0

    .line 182
    .local v0, "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->empty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/rule/Rule;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addSubRule(Lorg/mapsforge/map/rendertheme/rule/Rule;)V

    .line 185
    :cond_1
    iput-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    .line 186
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->ruleStack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    nop

    .end local v0    # "rule":Lorg/mapsforge/map/rendertheme/rule/Rule;
    goto/16 :goto_4

    :cond_2
    const-string v7, "area"

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 188
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 189
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    add-int/lit8 v2, v8, 0x1

    iput v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    iget-object v9, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->relativePathPrefix:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lorg/mapsforge/map/rendertheme/renderinstruction/Area;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)V

    .line 191
    .local v0, "area":Lorg/mapsforge/map/rendertheme/renderinstruction/Area;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 192
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 194
    .end local v0    # "area":Lorg/mapsforge/map/rendertheme/renderinstruction/Area;
    :cond_3
    goto/16 :goto_4

    :cond_4
    const-string v7, "caption"

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 195
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 196
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->symbols:Ljava/util/Map;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;)V

    .line 197
    .local v0, "caption":Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 198
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 200
    .end local v0    # "caption":Lorg/mapsforge/map/rendertheme/renderinstruction/Caption;
    :cond_5
    goto/16 :goto_4

    :cond_6
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "id"

    if-eqz v7, :cond_7

    .line 201
    :try_start_1
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 202
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    invoke-direct {v1, v8}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->addCategory(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 203
    :cond_7
    const-string v7, "circle"

    iget-object v9, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 204
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 205
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    add-int/lit8 v2, v8, 0x1

    iput v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;I)V

    .line 207
    .local v0, "circle":Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 208
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 210
    .end local v0    # "circle":Lorg/mapsforge/map/rendertheme/renderinstruction/Circle;
    :cond_8
    goto/16 :goto_4

    .line 213
    :cond_9
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 214
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 215
    const/4 v0, 0x0

    .line 216
    .local v0, "enabled":Z
    invoke-direct {v1, v4}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 217
    invoke-direct {v1, v4}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .line 219
    :cond_a
    const-string v2, "visible"

    invoke-direct {v1, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 220
    .local v2, "visible":Z
    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    invoke-direct {v1, v8}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v0}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;->createLayer(Ljava/lang/String;ZZ)Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    move-result-object v3

    iput-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    .line 221
    const-string v3, "parent"

    invoke-direct {v1, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 222
    .local v3, "parent":Ljava/lang/String;
    if-eqz v3, :cond_c

    .line 223
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    invoke-virtual {v4, v3}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;->getLayer(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    move-result-object v4

    .line 224
    .local v4, "parentEntry":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    if-eqz v4, :cond_c

    .line 225
    invoke-virtual {v4}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->getCategories()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 226
    .local v6, "cat":Ljava/lang/String;
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    invoke-virtual {v7, v6}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->addCategory(Ljava/lang/String;)V

    .line 227
    .end local v6    # "cat":Ljava/lang/String;
    goto :goto_0

    .line 228
    :cond_b
    invoke-virtual {v4}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->getOverlays()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    .line 229
    .local v6, "overlay":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    invoke-virtual {v7, v6}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->addOverlay(Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;)V

    .line 230
    .end local v6    # "overlay":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    goto :goto_1

    .line 233
    .end local v0    # "enabled":Z
    .end local v2    # "visible":Z
    .end local v3    # "parent":Ljava/lang/String;
    .end local v4    # "parentEntry":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    :cond_c
    goto/16 :goto_4

    :cond_d
    const-string v4, "line"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 234
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 235
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    add-int/lit8 v2, v8, 0x1

    iput v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    iget-object v9, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->relativePathPrefix:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v9}, Lorg/mapsforge/map/rendertheme/renderinstruction/Line;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;ILjava/lang/String;)V

    .line 237
    .local v0, "line":Lorg/mapsforge/map/rendertheme/renderinstruction/Line;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 238
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 240
    .end local v0    # "line":Lorg/mapsforge/map/rendertheme/renderinstruction/Line;
    :cond_e
    goto/16 :goto_4

    :cond_f
    const-string v4, "lineSymbol"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 241
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 242
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->relativePathPrefix:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 244
    .local v0, "lineSymbol":Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 245
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 247
    .end local v0    # "lineSymbol":Lorg/mapsforge/map/rendertheme/renderinstruction/LineSymbol;
    :cond_10
    goto/16 :goto_4

    .line 250
    :cond_11
    const-string v4, "name"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 251
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 252
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    const-string v2, "lang"

    invoke-direct {v1, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "value"

    invoke-direct {v1, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->addTranslation(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 256
    :cond_12
    const-string v4, "overlay"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 257
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 258
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    invoke-direct {v1, v8}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;->getLayer(Ljava/lang/String;)Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    move-result-object v0

    .line 259
    .local v0, "overlay":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    if-eqz v0, :cond_13

    .line 260
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentLayer:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;->addOverlay(Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;)V

    .line 262
    .end local v0    # "overlay":Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleLayer;
    :cond_13
    goto/16 :goto_4

    :cond_14
    const-string v4, "pathText"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 263
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 264
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;

    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-direct {v0, v2, v3, v4, v5}, Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 265
    .local v0, "pathText":Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 266
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 268
    .end local v0    # "pathText":Lorg/mapsforge/map/rendertheme/renderinstruction/PathText;
    :cond_15
    goto/16 :goto_4

    :cond_16
    const-string v4, "stylemenu"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 269
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_STYLE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 271
    new-instance v0, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    .line 272
    invoke-direct {v1, v8}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "defaultlang"

    .line 273
    invoke-direct {v1, v3}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "defaultvalue"

    invoke-direct {v1, v4}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->getStringAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderThemeStyleMenu:Lorg/mapsforge/map/rendertheme/XmlRenderThemeStyleMenu;

    goto/16 :goto_4

    .line 274
    :cond_17
    const-string v4, "symbol"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 275
    iget-object v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RENDERING_INSTRUCTION:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v0, v2}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 276
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;

    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    iget-object v5, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->displayModel:Lorg/mapsforge/map/model/DisplayModel;

    iget-object v6, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->relativePathPrefix:Ljava/lang/String;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;-><init>(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 278
    .local v0, "symbol":Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;
    invoke-direct {v1, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->isVisible(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 279
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->currentRule:Lorg/mapsforge/map/rendertheme/rule/Rule;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/Rule;->addRenderingInstruction(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)V

    .line 281
    :cond_18
    invoke-virtual {v0}, Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;->getId()Ljava/lang/String;

    move-result-object v2

    .line 282
    .local v2, "symbolId":Ljava/lang/String;
    if-eqz v2, :cond_19

    .line 283
    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->symbols:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .end local v0    # "symbol":Lorg/mapsforge/map/rendertheme/renderinstruction/Symbol;
    .end local v2    # "symbolId":Ljava/lang/String;
    :cond_19
    goto/16 :goto_4

    :cond_1a
    const-string v4, "hillshading"

    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 286
    iget-object v4, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    sget-object v7, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;->RULE:Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;

    invoke-direct {v1, v4, v7}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->checkState(Ljava/lang/String;Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler$Element;)V

    .line 287
    const/4 v4, 0x0

    .line 288
    .local v4, "category":Ljava/lang/String;
    const/4 v7, 0x5

    .line 289
    .local v7, "minZoom":B
    const/16 v8, 0x11

    .line 290
    .local v8, "maxZoom":B
    const/4 v9, 0x5

    .line 291
    .local v9, "layer":B
    const/16 v10, 0x40

    .line 292
    .local v10, "magnitude":S
    const/4 v11, 0x0

    .line 294
    .local v11, "always":Z
    const/4 v12, 0x0

    move v15, v7

    move/from16 v16, v8

    move/from16 v17, v9

    move/from16 v18, v10

    move/from16 v19, v11

    .end local v7    # "minZoom":B
    .end local v8    # "maxZoom":B
    .end local v9    # "layer":B
    .end local v10    # "magnitude":S
    .end local v11    # "always":Z
    .local v12, "i":I
    .local v15, "minZoom":B
    .local v16, "maxZoom":B
    .local v17, "layer":B
    .local v18, "magnitude":S
    .local v19, "always":Z
    :goto_2
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v7

    if-ge v12, v7, :cond_22

    .line 295
    iget-object v7, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v7

    .line 296
    .local v7, "name":Ljava/lang/String;
    iget-object v8, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v8, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 299
    move-object v4, v8

    goto :goto_3

    .line 300
    :cond_1b
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    .line 301
    invoke-static {v3, v8}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v9

    move v15, v9

    .end local v15    # "minZoom":B
    .local v9, "minZoom":B
    goto :goto_3

    .line 302
    .end local v9    # "minZoom":B
    .restart local v15    # "minZoom":B
    :cond_1c
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    .line 303
    invoke-static {v2, v8}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v9

    move/from16 v16, v9

    .end local v16    # "maxZoom":B
    .local v9, "maxZoom":B
    goto :goto_3

    .line 304
    .end local v9    # "maxZoom":B
    .restart local v16    # "maxZoom":B
    :cond_1d
    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 305
    invoke-static {v0, v8}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    int-to-short v9, v9

    .line 306
    .end local v18    # "magnitude":S
    .local v9, "magnitude":S
    const/16 v10, 0xff

    if-gt v9, v10, :cond_1e

    move/from16 v18, v9

    goto :goto_3

    .line 307
    :cond_1e
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "Attribute \'magnitude\' must not be > 255"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    .end local v9    # "magnitude":S
    .restart local v18    # "magnitude":S
    :cond_1f
    const-string v9, "always"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    .line 309
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move/from16 v19, v9

    .end local v19    # "always":Z
    .local v9, "always":Z
    goto :goto_3

    .line 310
    .end local v9    # "always":Z
    .restart local v19    # "always":Z
    :cond_20
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 311
    invoke-static {v6, v8}, Lorg/mapsforge/map/rendertheme/XmlUtils;->parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B

    move-result v9

    move/from16 v17, v9

    .line 294
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_21
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 315
    .end local v12    # "i":I
    :cond_22
    iget v13, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    add-int/lit8 v0, v13, 0x1

    iput v0, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->level:I

    .line 316
    .local v13, "hillShadingLevel":I
    new-instance v0, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;

    iget-object v14, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->graphicFactory:Lorg/mapsforge/core/graphics/GraphicFactory;

    move-object v7, v0

    move v8, v15

    move/from16 v9, v16

    move/from16 v10, v18

    move/from16 v11, v17

    move/from16 v12, v19

    invoke-direct/range {v7 .. v14}, Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;-><init>(BBSBZILorg/mapsforge/core/graphics/GraphicFactory;)V

    .line 318
    .local v0, "hillshading":Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->categories:Ljava/util/Set;

    if-eqz v2, :cond_23

    if-eqz v4, :cond_23

    .line 319
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    .line 320
    :cond_23
    iget-object v2, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->renderTheme:Lorg/mapsforge/map/rendertheme/rule/RenderTheme;

    invoke-virtual {v2, v0}, Lorg/mapsforge/map/rendertheme/rule/RenderTheme;->addHillShadings(Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;)V

    .line 322
    .end local v0    # "hillshading":Lorg/mapsforge/map/rendertheme/renderinstruction/Hillshading;
    .end local v4    # "category":Ljava/lang/String;
    .end local v13    # "hillShadingLevel":I
    .end local v15    # "minZoom":B
    .end local v16    # "maxZoom":B
    .end local v17    # "layer":B
    .end local v18    # "magnitude":S
    .end local v19    # "always":Z
    :cond_24
    nop

    .line 327
    :goto_4
    goto :goto_5

    .line 323
    :cond_25
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown element: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->qName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->LOGGER:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rendertheme missing or invalid resource "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 328
    .end local v0    # "e":Ljava/io/IOException;
    :goto_5
    return-void
.end method


# virtual methods
.method public processRenderTheme()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 121
    .local v0, "eventType":I
    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 123
    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 124
    invoke-direct {p0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->startElement()V

    goto :goto_0

    .line 125
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 126
    invoke-direct {p0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->endElement()V

    goto :goto_0

    .line 127
    :cond_3
    nop

    .line 130
    :goto_0
    iget-object v1, p0, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->pullParser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    .line 131
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 132
    invoke-direct {p0}, Lorg/mapsforge/map/rendertheme/rule/RenderThemeHandler;->endDocument()V

    .line 133
    return-void
.end method
