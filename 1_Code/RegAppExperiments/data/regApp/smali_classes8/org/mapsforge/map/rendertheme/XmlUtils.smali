.class public final Lorg/mapsforge/map/rendertheme/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# static fields
.field private static final LOGGER:Ljava/util/logging/Logger;

.field private static final PREFIX_ASSETS:Ljava/lang/String; = "assets:"

.field private static final PREFIX_FILE:Ljava/lang/String; = "file:"

.field private static final PREFIX_JAR:Ljava/lang/String; = "jar:"

.field private static final PREFIX_JAR_V1:Ljava/lang/String; = "jar:/org/mapsforge/android/maps/rendertheme"

.field private static final UNSUPPORTED_COLOR_FORMAT:Ljava/lang/String; = "unsupported color format: "


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const-class v0, Lorg/mapsforge/map/rendertheme/XmlUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/rendertheme/XmlUtils;->LOGGER:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private static checkForNegativeValue(Ljava/lang/String;F)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 137
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 140
    return-void

    .line 138
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must not be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkMandatoryAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p0, "elementName"    # Ljava/lang/String;
    .param p1, "attributeName"    # Ljava/lang/String;
    .param p2, "attributeValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 47
    if-eqz p2, :cond_0

    .line 50
    return-void

    .line 48
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "missing attribute \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' for element: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBitmap(Lorg/mapsforge/core/graphics/GraphicFactory;Lorg/mapsforge/map/model/DisplayModel;Ljava/lang/String;Ljava/lang/String;III)Lorg/mapsforge/core/graphics/ResourceBitmap;
    .locals 17
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "displayModel"    # Lorg/mapsforge/map/model/DisplayModel;
    .param p2, "relativePathPrefix"    # Ljava/lang/String;
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "percent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    move-object/from16 v1, p3

    if-eqz v1, :cond_2

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    invoke-static {v15, v14, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->createInputStream(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v16

    .line 61
    .local v16, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static/range {p2 .. p3}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 64
    .local v13, "absoluteName":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v12, p4

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v11, p5

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p6

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    .line 65
    .local v8, "hash":I
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ".svg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 67
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v4

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-interface/range {v2 .. v8}, Lorg/mapsforge/core/graphics/GraphicFactory;->renderSvg(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 67
    return-object v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SVG render failed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "graphicFactory":Lorg/mapsforge/core/graphics/GraphicFactory;
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    .end local p2    # "relativePathPrefix":Ljava/lang/String;
    .end local p3    # "src":Ljava/lang/String;
    .end local p4    # "width":I
    .end local p5    # "height":I
    .end local p6    # "percent":I
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 73
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "graphicFactory":Lorg/mapsforge/core/graphics/GraphicFactory;
    .restart local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    .restart local p2    # "relativePathPrefix":Ljava/lang/String;
    .restart local p3    # "src":Ljava/lang/String;
    .restart local p4    # "width":I
    .restart local p5    # "height":I
    .restart local p6    # "percent":I
    :cond_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/mapsforge/map/model/DisplayModel;->getScaleFactor()F

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v9, p0

    move-object/from16 v10, v16

    move v11, v0

    move/from16 v12, p4

    move-object v2, v13

    .end local v13    # "absoluteName":Ljava/lang/String;
    .local v2, "absoluteName":Ljava/lang/String;
    move/from16 v13, p5

    move/from16 v14, p6

    move v15, v8

    :try_start_4
    invoke-interface/range {v9 .. v15}, Lorg/mapsforge/core/graphics/GraphicFactory;->createResourceBitmap(Ljava/io/InputStream;FIIII)Lorg/mapsforge/core/graphics/ResourceBitmap;

    move-result-object v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 78
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 73
    return-object v0

    .line 74
    :catch_1
    move-exception v0

    goto :goto_0

    .end local v2    # "absoluteName":Ljava/lang/String;
    .restart local v13    # "absoluteName":Ljava/lang/String;
    :catch_2
    move-exception v0

    move-object v2, v13

    .line 75
    .end local v13    # "absoluteName":Ljava/lang/String;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "absoluteName":Ljava/lang/String;
    :goto_0
    :try_start_5
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Reading bitmap file failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v16    # "inputStream":Ljava/io/InputStream;
    .end local p0    # "graphicFactory":Lorg/mapsforge/core/graphics/GraphicFactory;
    .end local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    .end local p2    # "relativePathPrefix":Ljava/lang/String;
    .end local p3    # "src":Ljava/lang/String;
    .end local p4    # "width":I
    .end local p5    # "height":I
    .end local p6    # "percent":I
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 78
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "absoluteName":Ljava/lang/String;
    .end local v8    # "hash":I
    .restart local v16    # "inputStream":Ljava/io/InputStream;
    .restart local p0    # "graphicFactory":Lorg/mapsforge/core/graphics/GraphicFactory;
    .restart local p1    # "displayModel":Lorg/mapsforge/map/model/DisplayModel;
    .restart local p2    # "relativePathPrefix":Ljava/lang/String;
    .restart local p3    # "src":Ljava/lang/String;
    .restart local p4    # "width":I
    .restart local p5    # "height":I
    .restart local p6    # "percent":I
    :catchall_0
    move-exception v0

    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 79
    throw v0

    .line 56
    .end local v16    # "inputStream":Ljava/io/InputStream;
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createInputStream(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "relativePathPrefix"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 149
    const-string v0, "assets:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-static {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromAssets(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .local v0, "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 152
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_0
    const-string v0, "file:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 154
    invoke-static {p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_2

    .line 155
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_1
    const-string v0, "jar:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "jar:/org/mapsforge/android/maps/rendertheme"

    if-nez v1, :cond_4

    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 163
    :cond_2
    invoke-static {p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 165
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    if-nez v0, :cond_3

    .line 166
    invoke-static {p0, p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromAssets(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 169
    :cond_3
    if-nez v0, :cond_7

    .line 170
    invoke-static {p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromJar(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_2

    .line 156
    .end local v0    # "inputStream":Ljava/io/InputStream;
    :cond_4
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 157
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 158
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 161
    :cond_6
    :goto_1
    invoke-static {p1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromJar(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 175
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    :cond_7
    :goto_2
    if-nez v0, :cond_8

    .line 176
    const-string v1, "/assets/"

    invoke-static {v1, p2}, Lorg/mapsforge/map/rendertheme/XmlUtils;->inputStreamFromJar(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_8

    .line 178
    sget-object v1, Lorg/mapsforge/map/rendertheme/XmlUtils;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internal resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 182
    :cond_8
    if-eqz v0, :cond_9

    .line 183
    return-object v0

    .line 186
    :cond_9
    sget-object v1, Lorg/mapsforge/map/rendertheme/XmlUtils;->LOGGER:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    .line 187
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static createXmlPullParserException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlPullParserException;
    .locals 3
    .param p0, "element"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "attributeIndex"    # I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    const-string v1, "unknown attribute ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    const-string v1, ") in element \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "\': "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "relativePathPrefix"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_0

    .line 236
    return-object p1

    .line 238
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;)I
    .locals 1
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "colorString"    # Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v0

    return v0
.end method

.method private static getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;IILorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I
    .locals 5
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "colorString"    # Ljava/lang/String;
    .param p2, "alpha"    # I
    .param p3, "rgbStartIndex"    # I
    .param p4, "themeCallback"    # Lorg/mapsforge/map/rendertheme/ThemeCallback;
    .param p5, "origin"    # Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    .line 242
    add-int/lit8 v0, p3, 0x2

    invoke-virtual {p1, p3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 243
    .local v0, "red":I
    add-int/lit8 v2, p3, 0x2

    add-int/lit8 v3, p3, 0x4

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 244
    .local v2, "green":I
    add-int/lit8 v3, p3, 0x4

    add-int/lit8 v4, p3, 0x6

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 246
    .local v1, "blue":I
    invoke-interface {p0, p2, v0, v2, v1}, Lorg/mapsforge/core/graphics/GraphicFactory;->createColor(IIII)I

    move-result v3

    .line 247
    .local v3, "color":I
    if-eqz p4, :cond_0

    .line 248
    invoke-interface {p4, p5, v3}, Lorg/mapsforge/map/rendertheme/ThemeCallback;->getColor(Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;I)I

    move-result v3

    .line 250
    :cond_0
    return v3
.end method

.method public static getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Lorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I
    .locals 9
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "colorString"    # Ljava/lang/String;
    .param p2, "themeCallback"    # Lorg/mapsforge/map/rendertheme/ThemeCallback;
    .param p3, "origin"    # Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;

    .line 107
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const-string v1, "unsupported color format: "

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x23

    if-ne v0, v2, :cond_2

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    .line 110
    const/16 v5, 0xff

    const/4 v6, 0x1

    move-object v3, p0

    move-object v4, p1

    move-object v7, p2

    move-object v8, p3

    invoke-static/range {v3 .. v8}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;IILorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v0

    return v0

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    .line 112
    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x3

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    move-object v7, p3

    invoke-static/range {v2 .. v7}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getColor(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;IILorg/mapsforge/map/rendertheme/ThemeCallback;Lorg/mapsforge/map/rendertheme/renderinstruction/RenderInstruction;)I

    move-result v0

    return v0

    .line 114
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .param p0, "parentPath"    # Ljava/lang/String;
    .param p1, "pathName"    # Ljava/lang/String;

    .line 254
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sget-char v1, Ljava/io/File;->separatorChar:C

    if-ne v0, v1, :cond_0

    .line 255
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static inputStreamFromAssets(Lorg/mapsforge/core/graphics/GraphicFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "graphicFactory"    # Lorg/mapsforge/core/graphics/GraphicFactory;
    .param p1, "relativePathPrefix"    # Ljava/lang/String;
    .param p2, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 196
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-interface {p0, p1, p2}, Lorg/mapsforge/core/graphics/GraphicFactory;->platformSpecificSources(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 198
    goto :goto_0

    .line 197
    :catch_0
    move-exception v1

    .line 199
    :goto_0
    if-eqz v0, :cond_0

    .line 200
    return-object v0

    .line 202
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static inputStreamFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3
    .param p0, "relativePathPrefix"    # Ljava/lang/String;
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 209
    invoke-static {p0, p1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 210
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sget-char v2, Ljava/io/File;->separatorChar:C

    if-ne v1, v2, :cond_0

    .line 212
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 214
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    .line 215
    const/4 v0, 0x0

    goto :goto_0

    .line 217
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_3

    .line 218
    :cond_2
    const/4 v0, 0x0

    .line 220
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 221
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v1

    .line 223
    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method private static inputStreamFromJar(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p0, "relativePathPrefix"    # Ljava/lang/String;
    .param p1, "src"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 230
    invoke-static {p0, p1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->getAbsoluteName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "absoluteName":Ljava/lang/String;
    const-class v1, Lorg/mapsforge/map/rendertheme/XmlUtils;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method public static parseNonNegativeByte(Ljava/lang/String;Ljava/lang/String;)B
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 119
    invoke-static {p1}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    .line 120
    .local v0, "parsedByte":B
    int-to-float v1, v0

    invoke-static {p0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkForNegativeValue(Ljava/lang/String;F)V

    .line 121
    return v0
.end method

.method public static parseNonNegativeFloat(Ljava/lang/String;Ljava/lang/String;)F
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 125
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 126
    .local v0, "parsedFloat":F
    invoke-static {p0, v0}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkForNegativeValue(Ljava/lang/String;F)V

    .line 127
    return v0
.end method

.method public static parseNonNegativeInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 131
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 132
    .local v0, "parsedInt":I
    int-to-float v1, v0

    invoke-static {p0, v1}, Lorg/mapsforge/map/rendertheme/XmlUtils;->checkForNegativeValue(Ljava/lang/String;F)V

    .line 133
    return v0
.end method
