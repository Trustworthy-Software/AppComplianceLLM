.class public final Lcom/google/firebase/firestore/LoadBundleTaskProgress;
.super Ljava/lang/Object;
.source "LoadBundleTaskProgress.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;
    }
.end annotation


# static fields
.field static final INITIAL:Lcom/google/firebase/firestore/LoadBundleTaskProgress;


# instance fields
.field private final bytesLoaded:J

.field private final documentsLoaded:I

.field private final exception:Ljava/lang/Exception;

.field private final taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

.field private final totalBytes:J

.field private final totalDocuments:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 24
    new-instance v9, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v8, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->SUCCESS:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;-><init>(IIJJLjava/lang/Exception;Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;)V

    sput-object v9, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->INITIAL:Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    return-void
.end method

.method public constructor <init>(IIJJLjava/lang/Exception;Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;)V
    .locals 0
    .param p1, "documentsLoaded"    # I
    .param p2, "totalDocuments"    # I
    .param p3, "bytesLoaded"    # J
    .param p5, "totalBytes"    # J
    .param p7, "exception"    # Ljava/lang/Exception;
    .param p8, "taskState"    # Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->documentsLoaded:I

    .line 56
    iput p2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalDocuments:I

    .line 57
    iput-wide p3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->bytesLoaded:J

    .line 58
    iput-wide p5, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalBytes:J

    .line 59
    iput-object p8, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    .line 60
    iput-object p7, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    .line 61
    return-void
.end method

.method public static forInitial(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .locals 10
    .param p0, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 71
    new-instance v9, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    const/4 v1, 0x0

    .line 73
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalDocuments()I

    move-result v2

    const-wide/16 v3, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalBytes()J

    move-result-wide v5

    const/4 v7, 0x0

    sget-object v8, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->RUNNING:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;-><init>(IIJJLjava/lang/Exception;Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;)V

    .line 71
    return-object v9
.end method

.method public static forSuccess(Lcom/google/firebase/firestore/bundle/BundleMetadata;)Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    .locals 10
    .param p0, "bundleMetadata"    # Lcom/google/firebase/firestore/bundle/BundleMetadata;

    .line 88
    new-instance v9, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 89
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalDocuments()I

    move-result v1

    .line 90
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalDocuments()I

    move-result v2

    .line 91
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalBytes()J

    move-result-wide v3

    .line 92
    invoke-virtual {p0}, Lcom/google/firebase/firestore/bundle/BundleMetadata;->getTotalBytes()J

    move-result-wide v5

    const/4 v7, 0x0

    sget-object v8, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->SUCCESS:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/firestore/LoadBundleTaskProgress;-><init>(IIJJLjava/lang/Exception;Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;)V

    .line 88
    return-object v9
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .line 135
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 136
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 138
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;

    .line 140
    .local v2, "that":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    iget v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->documentsLoaded:I

    iget v4, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->documentsLoaded:I

    if-eq v3, v4, :cond_2

    return v1

    .line 141
    :cond_2
    iget v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalDocuments:I

    iget v4, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalDocuments:I

    if-eq v3, v4, :cond_3

    return v1

    .line 142
    :cond_3
    iget-wide v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->bytesLoaded:J

    iget-wide v5, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->bytesLoaded:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_4

    return v1

    .line 143
    :cond_4
    iget-wide v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalBytes:J

    iget-wide v5, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalBytes:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_5

    return v1

    .line 144
    :cond_5
    iget-object v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    iget-object v4, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    if-eq v3, v4, :cond_6

    return v1

    .line 145
    :cond_6
    iget-object v3, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    if-eqz v3, :cond_7

    iget-object v0, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_7
    iget-object v3, v2, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    move v0, v1

    :goto_0
    return v0

    .line 136
    .end local v2    # "that":Lcom/google/firebase/firestore/LoadBundleTaskProgress;
    :cond_9
    :goto_1
    return v1
.end method

.method public getBytesLoaded()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->bytesLoaded:J

    return-wide v0
.end method

.method public getDocumentsLoaded()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->documentsLoaded:I

    return v0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method public getTaskState()Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 116
    iget-wide v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalBytes:J

    return-wide v0
.end method

.method public getTotalDocuments()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalDocuments:I

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 150
    iget v0, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->documentsLoaded:I

    .line 151
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalDocuments:I

    add-int/2addr v1, v2

    .line 152
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->bytesLoaded:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    long-to-int v2, v2

    add-int/2addr v0, v2

    .line 153
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->totalBytes:J

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 154
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->taskState:Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/LoadBundleTaskProgress$TaskState;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 155
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/LoadBundleTaskProgress;->exception:Ljava/lang/Exception;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 156
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
