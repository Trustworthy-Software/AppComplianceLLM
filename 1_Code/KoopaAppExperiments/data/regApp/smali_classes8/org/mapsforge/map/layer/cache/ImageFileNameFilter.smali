.class final Lorg/mapsforge/map/layer/cache/ImageFileNameFilter;
.super Ljava/lang/Object;
.source "ImageFileNameFilter.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field static final INSTANCE:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lorg/mapsforge/map/layer/cache/ImageFileNameFilter;

    invoke-direct {v0}, Lorg/mapsforge/map/layer/cache/ImageFileNameFilter;-><init>()V

    sput-object v0, Lorg/mapsforge/map/layer/cache/ImageFileNameFilter;->INSTANCE:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 29
    const-string v0, ".tile"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
