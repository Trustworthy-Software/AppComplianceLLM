.class public Lcom/google/firebase/firestore/util/FileUtil;
.super Ljava/lang/Object;
.source "FileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/util/FileUtil$LegacyFileDeleter;,
        Lcom/google/firebase/firestore/util/FileUtil$DefaultFileDeleter;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static delete(Ljava/io/File;)V
    .locals 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 35
    invoke-static {p0}, Lcom/google/firebase/firestore/util/FileUtil$DefaultFileDeleter;->delete(Ljava/io/File;)V

    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/firestore/util/FileUtil$LegacyFileDeleter;->delete(Ljava/io/File;)V

    .line 39
    :goto_0
    return-void
.end method
