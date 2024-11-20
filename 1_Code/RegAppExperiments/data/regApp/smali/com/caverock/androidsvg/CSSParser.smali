.class Lcom/caverock/androidsvg/CSSParser;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassTarget;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassNot;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassEmpty;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassRoot;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassOnlyChild;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassAnPlusB;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClass;,
        Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;,
        Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;,
        Lcom/caverock/androidsvg/CSSParser$Selector;,
        Lcom/caverock/androidsvg/CSSParser$Rule;,
        Lcom/caverock/androidsvg/CSSParser$Source;,
        Lcom/caverock/androidsvg/CSSParser$Ruleset;,
        Lcom/caverock/androidsvg/CSSParser$SimpleSelector;,
        Lcom/caverock/androidsvg/CSSParser$Attrib;,
        Lcom/caverock/androidsvg/CSSParser$PseudoClassIdents;,
        Lcom/caverock/androidsvg/CSSParser$AttribOp;,
        Lcom/caverock/androidsvg/CSSParser$Combinator;,
        Lcom/caverock/androidsvg/CSSParser$MediaType;
    }
.end annotation


# static fields
.field private static final CLASS:Ljava/lang/String; = "class"

.field static final CSS_MIME_TYPE:Ljava/lang/String; = "text/css"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final SPECIFICITY_ATTRIBUTE_OR_PSEUDOCLASS:I = 0x3e8

.field private static final SPECIFICITY_ELEMENT_OR_PSEUDOELEMENT:I = 0x1

.field private static final SPECIFICITY_ID_ATTRIBUTE:I = 0xf4240

.field private static final TAG:Ljava/lang/String; = "AndroidSVG CSSParser"


# instance fields
.field private deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

.field private inMediaRule:Z

.field private source:Lcom/caverock/androidsvg/CSSParser$Source;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 381
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    sget-object v1, Lcom/caverock/androidsvg/CSSParser$Source;->Document:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {p0, v0, v1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 382
    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V
    .locals 1
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;
    .param p2, "source"    # Lcom/caverock/androidsvg/CSSParser$Source;

    .line 392
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 51
    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser;->source:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 393
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 394
    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser;->source:Lcom/caverock/androidsvg/CSSParser$Source;

    .line 395
    return-void
.end method

.method constructor <init>(Lcom/caverock/androidsvg/CSSParser$Source;)V
    .locals 1
    .param p1, "source"    # Lcom/caverock/androidsvg/CSSParser$Source;

    .line 387
    sget-object v0, Lcom/caverock/androidsvg/CSSParser$MediaType;->screen:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;-><init>(Lcom/caverock/androidsvg/CSSParser$MediaType;Lcom/caverock/androidsvg/CSSParser$Source;)V

    .line 388
    return-void
.end method

.method private static getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I
    .locals 4
    .param p1, "ancestorsPos"    # I
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")I"
        }
    .end annotation

    .line 1436
    .local p0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    if-gez p1, :cond_0

    .line 1437
    const/4 v0, 0x0

    return v0

    .line 1438
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    const/4 v2, -0x1

    if-eq v0, v1, :cond_1

    .line 1439
    return v2

    .line 1440
    :cond_1
    const/4 v0, 0x0

    .line 1441
    .local v0, "childPos":I
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v1}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgObject;

    .line 1443
    .local v3, "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    if-ne v3, p2, :cond_2

    .line 1444
    return v0

    .line 1445
    :cond_2
    nop

    .end local v3    # "child":Lcom/caverock/androidsvg/SVG$SvgObject;
    add-int/lit8 v0, v0, 0x1

    .line 1446
    goto :goto_0

    .line 1447
    :cond_3
    return v2
.end method

.method static mediaMatches(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 3
    .param p0, "mediaListStr"    # Ljava/lang/String;
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 409
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 410
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 411
    invoke-static {v0}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 412
    .local v1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    invoke-static {v1, p1}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v2

    return v2
.end method

.method private static mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z
    .locals 3
    .param p1, "rendererMediaType"    # Lcom/caverock/androidsvg/CSSParser$MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ")Z"
        }
    .end annotation

    .line 1102
    .local p0, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/CSSParser$MediaType;

    .line 1103
    .local v1, "type":Lcom/caverock/androidsvg/CSSParser$MediaType;
    sget-object v2, Lcom/caverock/androidsvg/CSSParser$MediaType;->all:Lcom/caverock/androidsvg/CSSParser$MediaType;

    if-eq v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    goto :goto_1

    .line 1105
    .end local v1    # "type":Lcom/caverock/androidsvg/CSSParser$MediaType;
    :cond_0
    goto :goto_0

    .line 1104
    .restart local v1    # "type":Lcom/caverock/androidsvg/CSSParser$MediaType;
    :cond_1
    :goto_1
    const/4 v0, 0x1

    return v0

    .line 1106
    .end local v1    # "type":Lcom/caverock/androidsvg/CSSParser$MediaType;
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 5
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .param p2, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 1132
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v0

    .line 1133
    .local v0, "atKeyword":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1134
    if-eqz v0, :cond_c

    .line 1136
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    const-string v2, "Invalid @media rule: expected \'}\' at end of rule set"

    if-nez v1, :cond_4

    const-string v1, "media"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1138
    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v1

    .line 1139
    .local v1, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    const/16 v3, 0x7b

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1142
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1143
    iget-object v3, p0, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v1, v3}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1144
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    .line 1145
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 1146
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    goto :goto_0

    .line 1148
    :cond_0
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    .line 1151
    :goto_0
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_2

    const/16 v3, 0x7d

    invoke-virtual {p2, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 1152
    :cond_1
    new-instance v3, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v3, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1154
    .end local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_2
    :goto_1
    goto/16 :goto_3

    .line 1140
    .restart local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_3
    new-instance v2, Lcom/caverock/androidsvg/CSSParseException;

    const-string v3, "Invalid @media rule: missing rule set"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1155
    .end local v1    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_4
    iget-boolean v1, p0, Lcom/caverock/androidsvg/CSSParser;->inMediaRule:Z

    if-nez v1, :cond_b

    const-string v1, "import"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1157
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextURL()Ljava/lang/String;

    move-result-object v1

    .line 1158
    .local v1, "file":Ljava/lang/String;
    if-nez v1, :cond_5

    .line 1159
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextCSSString()Ljava/lang/String;

    move-result-object v1

    .line 1160
    :cond_5
    if-eqz v1, :cond_a

    .line 1163
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1164
    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser;->parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v3

    .line 1166
    .local v3, "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v4

    if-nez v4, :cond_7

    const/16 v4, 0x3b

    invoke-virtual {p2, v4}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_2

    .line 1167
    :cond_6
    new-instance v4, Lcom/caverock/androidsvg/CSSParseException;

    invoke-direct {v4, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1169
    :cond_7
    :goto_2
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/caverock/androidsvg/CSSParser;->deviceMediaType:Lcom/caverock/androidsvg/CSSParser$MediaType;

    invoke-static {v3, v2}, Lcom/caverock/androidsvg/CSSParser;->mediaMatches(Ljava/util/List;Lcom/caverock/androidsvg/CSSParser$MediaType;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1170
    invoke-static {}, Lcom/caverock/androidsvg/SVG;->getFileResolver()Lcom/caverock/androidsvg/SVGExternalFileResolver;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/caverock/androidsvg/SVGExternalFileResolver;->resolveCSSStyleSheet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1171
    .local v2, "css":Ljava/lang/String;
    if-nez v2, :cond_8

    .line 1172
    return-void

    .line 1173
    :cond_8
    invoke-virtual {p0, v2}, Lcom/caverock/androidsvg/CSSParser;->parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->addAll(Lcom/caverock/androidsvg/CSSParser$Ruleset;)V

    .line 1175
    .end local v1    # "file":Ljava/lang/String;
    .end local v2    # "css":Ljava/lang/String;
    .end local v3    # "mediaList":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :cond_9
    goto :goto_3

    .line 1161
    .restart local v1    # "file":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/caverock/androidsvg/CSSParseException;

    const-string v3, "Invalid @import rule: expected string or url()"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    .end local v1    # "file":Ljava/lang/String;
    :cond_b
    const-string v1, "Ignoring @%s rule"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/caverock/androidsvg/CSSParser;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1181
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 1183
    :goto_3
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1184
    return-void

    .line 1135
    :cond_c
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    const-string v2, "Invalid \'@\' rule"

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseClassAttribute(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p0, "val"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1302
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 1303
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    const/4 v1, 0x0

    .line 1305
    .local v1, "classNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1307
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1308
    .local v2, "className":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 1309
    goto :goto_0

    .line 1310
    :cond_0
    if-nez v1, :cond_1

    .line 1311
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 1312
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1313
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1314
    .end local v2    # "className":Ljava/lang/String;
    goto :goto_0

    .line 1315
    :cond_2
    return-object v1
.end method

.method private parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;
    .locals 5
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 1264
    new-instance v0, Lcom/caverock/androidsvg/SVG$Style;

    invoke-direct {v0}, Lcom/caverock/androidsvg/SVG$Style;-><init>()V

    .line 1267
    .local v0, "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1268
    .local v1, "propertyName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1269
    const/16 v2, 0x3a

    invoke-virtual {p1, v2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1271
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1272
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextPropertyValue()Ljava/lang/String;

    move-result-object v2

    .line 1273
    .local v2, "propertyValue":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 1276
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1277
    const/16 v3, 0x21

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1278
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1279
    const-string v3, "important"

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1283
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    goto :goto_1

    .line 1280
    :cond_0
    new-instance v3, Lcom/caverock/androidsvg/CSSParseException;

    const-string v4, "Malformed rule set: found unexpected \'!\'"

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1285
    :cond_1
    :goto_1
    const/16 v3, 0x3b

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    .line 1287
    invoke-static {v0, v1, v2}, Lcom/caverock/androidsvg/SVGParser;->processStyleProperty(Lcom/caverock/androidsvg/SVG$Style;Ljava/lang/String;Ljava/lang/String;)V

    .line 1288
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1289
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v3

    if-nez v3, :cond_3

    const/16 v3, 0x7d

    invoke-virtual {p1, v3}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1290
    goto :goto_2

    .line 1291
    .end local v1    # "propertyName":Ljava/lang/String;
    .end local v2    # "propertyValue":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 1292
    :cond_3
    :goto_2
    return-object v0

    .line 1274
    .restart local v1    # "propertyName":Ljava/lang/String;
    .restart local v2    # "propertyValue":Ljava/lang/String;
    :cond_4
    new-instance v3, Lcom/caverock/androidsvg/CSSParseException;

    const-string v4, "Expected property value"

    invoke-direct {v3, v4}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1270
    .end local v2    # "propertyValue":Ljava/lang/String;
    :cond_5
    new-instance v2, Lcom/caverock/androidsvg/CSSParseException;

    const-string v3, "Expected \':\'"

    invoke-direct {v2, v3}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static parseMediaList(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;
    .locals 3
    .param p0, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;",
            ")",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/CSSParser$MediaType;",
            ">;"
        }
    .end annotation

    .line 1112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1113
    .local v0, "typeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/caverock/androidsvg/CSSParser$MediaType;>;"
    :goto_0
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1114
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextWord()Ljava/lang/String;

    move-result-object v1

    .line 1115
    .local v1, "type":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1116
    goto :goto_2

    .line 1118
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/caverock/androidsvg/CSSParser$MediaType;->valueOf(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$MediaType;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1121
    goto :goto_1

    .line 1119
    :catch_0
    move-exception v2

    .line 1123
    :goto_1
    invoke-virtual {p0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipCommaWhitespace()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1124
    goto :goto_2

    .line 1125
    .end local v1    # "type":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 1126
    :cond_2
    :goto_2
    return-object v0
.end method

.method private parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z
    .locals 6
    .param p1, "ruleset"    # Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .param p2, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/caverock/androidsvg/CSSParseException;
        }
    .end annotation

    .line 1241
    invoke-static {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->access$400(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Ljava/util/List;

    move-result-object v0

    .line 1242
    .local v0, "selectors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/CSSParser$Selector;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1244
    const/16 v1, 0x7b

    invoke-virtual {p2, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1246
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1247
    invoke-direct {p0, p2}, Lcom/caverock/androidsvg/CSSParser;->parseDeclarations(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/SVG$Style;

    move-result-object v1

    .line 1248
    .local v1, "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    invoke-virtual {p2}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 1249
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$Selector;

    .line 1250
    .local v3, "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    new-instance v4, Lcom/caverock/androidsvg/CSSParser$Rule;

    iget-object v5, p0, Lcom/caverock/androidsvg/CSSParser;->source:Lcom/caverock/androidsvg/CSSParser$Source;

    invoke-direct {v4, v3, v1, v5}, Lcom/caverock/androidsvg/CSSParser$Rule;-><init>(Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$Style;Lcom/caverock/androidsvg/CSSParser$Source;)V

    invoke-virtual {p1, v4}, Lcom/caverock/androidsvg/CSSParser$Ruleset;->add(Lcom/caverock/androidsvg/CSSParser$Rule;)V

    .line 1251
    .end local v3    # "selector":Lcom/caverock/androidsvg/CSSParser$Selector;
    goto :goto_0

    .line 1252
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1245
    .end local v1    # "ruleStyle":Lcom/caverock/androidsvg/SVG$Style;
    :cond_1
    new-instance v1, Lcom/caverock/androidsvg/CSSParseException;

    const-string v2, "Malformed rule block: expected \'{\'"

    invoke-direct {v1, v2}, Lcom/caverock/androidsvg/CSSParseException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1256
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 4
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 1208
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$Ruleset;

    invoke-direct {v0}, Lcom/caverock/androidsvg/CSSParser$Ruleset;-><init>()V

    .line 1211
    .local v0, "ruleset":Lcom/caverock/androidsvg/CSSParser$Ruleset;
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1213
    const-string v1, "<!--"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1214
    goto :goto_0

    .line 1215
    :cond_0
    const-string v1, "-->"

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1216
    goto :goto_0

    .line 1218
    :cond_1
    const/16 v1, 0x40

    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->consume(C)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1219
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseAtRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V

    .line 1220
    goto :goto_0

    .line 1222
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/caverock/androidsvg/CSSParser;->parseRule(Lcom/caverock/androidsvg/CSSParser$Ruleset;Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Z

    move-result v1
    :try_end_0
    .catch Lcom/caverock/androidsvg/CSSParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 1223
    goto :goto_0

    .line 1234
    :cond_3
    goto :goto_1

    .line 1229
    :catch_0
    move-exception v1

    .line 1231
    .local v1, "e":Lcom/caverock/androidsvg/CSSParseException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CSS parser terminated early due to error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/caverock/androidsvg/CSSParseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AndroidSVG CSSParser"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1235
    .end local v1    # "e":Lcom/caverock/androidsvg/CSSParseException;
    :goto_1
    return-object v0
.end method

.method private static ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 9
    .param p0, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p2, "selPartPos"    # I
    .param p4, "ancestorsPos"    # I
    .param p5, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 1367
    .local p3, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 1368
    .local v0, "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-static {p0, v0, p3, p4, p5}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1369
    return v2

    .line 1372
    :cond_0
    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v1, v3, :cond_4

    .line 1374
    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 1375
    return v1

    .line 1377
    :cond_1
    :goto_0
    if-ltz p4, :cond_3

    .line 1378
    add-int/lit8 v3, p2, -0x1

    invoke-static {p0, p1, v3, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1379
    return v1

    .line 1380
    :cond_2
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    .line 1382
    :cond_3
    return v2

    .line 1384
    :cond_4
    iget-object v1, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v3, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v1, v3, :cond_5

    .line 1386
    add-int/lit8 v1, p2, -0x1

    invoke-static {p0, p1, v1, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v1

    return v1

    .line 1390
    :cond_5
    invoke-static {p3, p4, p5}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v1

    .line 1391
    .local v1, "childPos":I
    if-gtz v1, :cond_6

    .line 1392
    return v2

    .line 1393
    :cond_6
    iget-object v2, p5, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v2}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1394
    .local v2, "prevSibling":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    add-int/lit8 v5, p2, -0x1

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    move v7, p4

    move-object v8, v2

    invoke-static/range {v3 .. v8}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v3

    return v3
.end method

.method static ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 9
    .param p0, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p2, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1344
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1345
    .local v0, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    iget-object v1, p2, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    move-object v7, v1

    .line 1346
    .local v7, "parent":Lcom/caverock/androidsvg/SVG$SvgContainer;
    :goto_0
    const/4 v1, 0x0

    if-eqz v7, :cond_0

    .line 1347
    invoke-interface {v0, v1, v7}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1348
    move-object v1, v7

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgObject;

    iget-object v7, v1, Lcom/caverock/androidsvg/SVG$SvgObject;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    goto :goto_0

    .line 1351
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    add-int/lit8 v8, v2, -0x1

    .line 1354
    .local v8, "ancestorsPos":I
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 1355
    invoke-virtual {p1, v1}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v1

    invoke-static {p0, v1, v0, v8, p2}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    return v1

    .line 1359
    :cond_1
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$Selector;->size()I

    move-result v1

    add-int/lit8 v3, v1, -0x1

    move-object v1, p0

    move-object v2, p1

    move-object v4, v0

    move v5, v8

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v1

    return v1
.end method

.method private static ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z
    .locals 10
    .param p0, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p1, "selector"    # Lcom/caverock/androidsvg/CSSParser$Selector;
    .param p2, "selPartPos"    # I
    .param p4, "ancestorsPos"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;",
            "Lcom/caverock/androidsvg/CSSParser$Selector;",
            "I",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I)Z"
        }
    .end annotation

    .line 1401
    .local p3, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    invoke-virtual {p1, p2}, Lcom/caverock/androidsvg/CSSParser$Selector;->get(I)Lcom/caverock/androidsvg/CSSParser$SimpleSelector;

    move-result-object v0

    .line 1402
    .local v0, "sel":Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1404
    .local v1, "obj":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    invoke-static {p0, v0, p3, p4, v1}, Lcom/caverock/androidsvg/CSSParser;->selectorMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 1405
    return v3

    .line 1408
    :cond_0
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->DESCENDANT:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v2, v4, :cond_3

    .line 1410
    const/4 v2, 0x1

    if-nez p2, :cond_1

    .line 1411
    return v2

    .line 1413
    :cond_1
    if-lez p4, :cond_2

    .line 1414
    add-int/lit8 v4, p2, -0x1

    add-int/lit8 p4, p4, -0x1

    invoke-static {p0, p1, v4, p3, p4}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1415
    return v2

    .line 1417
    :cond_2
    return v3

    .line 1419
    :cond_3
    iget-object v2, v0, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->combinator:Lcom/caverock/androidsvg/CSSParser$Combinator;

    sget-object v4, Lcom/caverock/androidsvg/CSSParser$Combinator;->CHILD:Lcom/caverock/androidsvg/CSSParser$Combinator;

    if-ne v2, v4, :cond_4

    .line 1421
    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v3, p4, -0x1

    invoke-static {p0, p1, v2, p3, v3}, Lcom/caverock/androidsvg/CSSParser;->ruleMatchOnAncestors(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;I)Z

    move-result v2

    return v2

    .line 1425
    :cond_4
    invoke-static {p3, p4, v1}, Lcom/caverock/androidsvg/CSSParser;->getChildPosition(Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)I

    move-result v2

    .line 1426
    .local v2, "childPos":I
    if-gtz v2, :cond_5

    .line 1427
    return v3

    .line 1428
    :cond_5
    iget-object v3, v1, Lcom/caverock/androidsvg/SVG$SvgElementBase;->parent:Lcom/caverock/androidsvg/SVG$SvgContainer;

    invoke-interface {v3}, Lcom/caverock/androidsvg/SVG$SvgContainer;->getChildren()Ljava/util/List;

    move-result-object v3

    add-int/lit8 v4, v2, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/SVG$SvgElementBase;

    .line 1429
    .local v3, "prevSibling":Lcom/caverock/androidsvg/SVG$SvgElementBase;
    add-int/lit8 v6, p2, -0x1

    move-object v4, p0

    move-object v5, p1

    move-object v7, p3

    move v8, p4

    move-object v9, v3

    invoke-static/range {v4 .. v9}, Lcom/caverock/androidsvg/CSSParser;->ruleMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$Selector;ILjava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v4

    return v4
.end method

.method private static selectorMatch(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/CSSParser$SimpleSelector;Ljava/util/List;ILcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 6
    .param p0, "ruleMatchContext"    # Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;
    .param p1, "sel"    # Lcom/caverock/androidsvg/CSSParser$SimpleSelector;
    .param p3, "ancestorsPos"    # I
    .param p4, "obj"    # Lcom/caverock/androidsvg/SVG$SvgElementBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;",
            "Lcom/caverock/androidsvg/CSSParser$SimpleSelector;",
            "Ljava/util/List<",
            "Lcom/caverock/androidsvg/SVG$SvgContainer;",
            ">;I",
            "Lcom/caverock/androidsvg/SVG$SvgElementBase;",
            ")Z"
        }
    .end annotation

    .line 1454
    .local p2, "ancestors":Ljava/util/List;, "Ljava/util/List<Lcom/caverock/androidsvg/SVG$SvgContainer;>;"
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->tag:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/caverock/androidsvg/SVG$SvgElementBase;->getNodeName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1455
    return v1

    .line 1460
    :cond_0
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 1462
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->attribs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$Attrib;

    .line 1464
    .local v3, "attr":Lcom/caverock/androidsvg/CSSParser$Attrib;
    iget-object v4, v3, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v5, "class"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_2

    :sswitch_1
    const-string v5, "id"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v1

    goto :goto_2

    :goto_1
    const/4 v4, -0x1

    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 1477
    return v1

    .line 1470
    :pswitch_0
    iget-object v4, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    if-nez v4, :cond_2

    .line 1471
    return v1

    .line 1472
    :cond_2
    iget-object v4, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->classNames:Ljava/util/List;

    iget-object v5, v3, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1473
    return v1

    .line 1466
    :pswitch_1
    iget-object v4, v3, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iget-object v5, p4, Lcom/caverock/androidsvg/SVG$SvgElementBase;->id:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1467
    return v1

    .line 1479
    .end local v3    # "attr":Lcom/caverock/androidsvg/CSSParser$Attrib;
    :cond_3
    goto :goto_0

    .line 1483
    :cond_4
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 1484
    iget-object v0, p1, Lcom/caverock/androidsvg/CSSParser$SimpleSelector;->pseudos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/caverock/androidsvg/CSSParser$PseudoClass;

    .line 1485
    .local v3, "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    invoke-interface {v3, p0, p4}, Lcom/caverock/androidsvg/CSSParser$PseudoClass;->matches(Lcom/caverock/androidsvg/CSSParser$RuleMatchContext;Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 1486
    return v1

    .line 1487
    .end local v3    # "pseudo":Lcom/caverock/androidsvg/CSSParser$PseudoClass;
    :cond_5
    goto :goto_3

    .line 1491
    :cond_6
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        0xd1b -> :sswitch_1
        0x5a5a978 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private skipAtRule(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)V
    .locals 3
    .param p1, "scan"    # Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    .line 1190
    const/4 v0, 0x0

    .line 1191
    .local v0, "depth":I
    :goto_0
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->empty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1193
    invoke-virtual {p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->nextChar()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1194
    .local v1, "ch":I
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    .line 1195
    return-void

    .line 1196
    :cond_0
    const/16 v2, 0x7b

    if-ne v1, v2, :cond_1

    .line 1197
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1198
    :cond_1
    const/16 v2, 0x7d

    if-ne v1, v2, :cond_2

    if-lez v0, :cond_2

    .line 1199
    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_2

    .line 1200
    return-void

    .line 1202
    .end local v1    # "ch":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 1203
    :cond_3
    return-void
.end method

.method private static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 421
    const-string v0, "AndroidSVG CSSParser"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;)Lcom/caverock/androidsvg/CSSParser$Ruleset;
    .locals 2
    .param p1, "sheet"    # Ljava/lang/String;

    .line 400
    new-instance v0, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;

    invoke-direct {v0, p1}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;-><init>(Ljava/lang/String;)V

    .line 401
    .local v0, "scan":Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;
    invoke-virtual {v0}, Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;->skipWhitespace()V

    .line 403
    invoke-direct {p0, v0}, Lcom/caverock/androidsvg/CSSParser;->parseRuleset(Lcom/caverock/androidsvg/CSSParser$CSSTextScanner;)Lcom/caverock/androidsvg/CSSParser$Ruleset;

    move-result-object v1

    return-object v1
.end method
