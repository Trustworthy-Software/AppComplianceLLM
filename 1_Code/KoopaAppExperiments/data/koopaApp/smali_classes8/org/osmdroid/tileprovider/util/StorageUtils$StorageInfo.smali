.class public Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
.super Ljava/lang/Object;
.source "StorageUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/osmdroid/tileprovider/util/StorageUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageInfo"
.end annotation


# instance fields
.field public displayName:Ljava/lang/String;

.field public final display_number:I

.field public freeSpace:J

.field public final internal:Z

.field public final path:Ljava/lang/String;

.field public readonly:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZI)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "internal"    # Z
    .param p3, "readonly"    # Z
    .param p4, "display_number"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    .line 42
    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    .line 43
    iput-boolean p2, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    .line 44
    iput p4, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    .line 46
    nop

    .line 48
    new-instance v0, Landroid/os/StatFs;

    invoke-direct {v0, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    .line 53
    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 55
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/osmdroid/tileprovider/util/StorageUtils;->isWritable(Ljava/io/File;)Z

    move-result v1

    xor-int/2addr v1, v0

    iput-boolean v1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v1, "res":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 60
    const-string v0, "Internal SD card"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 61
    :cond_1
    if-le p4, v0, :cond_2

    .line 62
    const-string v0, "SD card "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 64
    :cond_2
    const-string v0, "SD card"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :goto_0
    if-eqz p3, :cond_3

    .line 67
    const-string v0, " (Read only)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 83
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 84
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 86
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;

    .line 88
    .local v2, "that":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    iget-boolean v4, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    if-eq v3, v4, :cond_2

    return v1

    .line 89
    :cond_2
    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    iget-boolean v4, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    if-eq v3, v4, :cond_3

    return v1

    .line 90
    :cond_3
    iget v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    iget v4, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    if-eq v3, v4, :cond_4

    return v1

    .line 91
    :cond_4
    iget-wide v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    iget-wide v5, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v1

    .line 92
    :cond_5
    iget-object v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v4, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_6
    iget-object v3, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    if-eqz v3, :cond_7

    :goto_0
    return v1

    .line 93
    :cond_7
    iget-object v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v0, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_8
    iget-object v3, v2, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    move v0, v1

    :goto_1
    return v0

    .line 84
    .end local v2    # "that":Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;
    :cond_a
    :goto_2
    return v1
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    .line 98
    iget-object v0, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->path:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 99
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->internal:Z

    add-int/2addr v2, v3

    .line 100
    .end local v0    # "result":I
    .local v2, "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-boolean v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->readonly:Z

    add-int/2addr v0, v3

    .line 101
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->display_number:I

    add-int/2addr v2, v3

    .line 102
    .end local v0    # "result":I
    .restart local v2    # "result":I
    mul-int/lit8 v0, v2, 0x1f

    iget-wide v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->freeSpace:J

    const/16 v5, 0x20

    ushr-long v5, v3, v5

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int/2addr v0, v3

    .line 103
    .end local v2    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 104
    .end local v0    # "result":I
    .restart local v2    # "result":I
    return v2
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "val"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/osmdroid/tileprovider/util/StorageUtils$StorageInfo;->displayName:Ljava/lang/String;

    .line 78
    return-void
.end method
