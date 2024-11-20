.class public final Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
.super Lcom/google/firebase/firestore/remote/WatchChange;
.source "WatchChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WatchTargetChange"
.end annotation


# instance fields
.field private final cause:Lio/grpc/Status;

.field private final changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

.field private final resumeToken:Lcom/google/protobuf/ByteString;

.field private final targetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;)V
    .locals 2
    .param p1, "changeType"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 189
    .local p2, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    sget-object v0, Lcom/google/firebase/firestore/remote/WatchStream;->EMPTY_RESUME_TOKEN:Lcom/google/protobuf/ByteString;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;Lcom/google/protobuf/ByteString;Lio/grpc/Status;)V

    .line 190
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "changeType"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .param p3, "resumeToken"    # Lcom/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            ")V"
        }
    .end annotation

    .line 194
    .local p2, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;Lcom/google/protobuf/ByteString;Lio/grpc/Status;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;Ljava/util/List;Lcom/google/protobuf/ByteString;Lio/grpc/Status;)V
    .locals 4
    .param p1, "changeType"    # Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .param p3, "resumeToken"    # Lcom/google/protobuf/ByteString;
    .param p4, "cause"    # Lio/grpc/Status;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/ByteString;",
            "Lio/grpc/Status;",
            ")V"
        }
    .end annotation

    .line 201
    .local p2, "targetIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$1;)V

    .line 203
    const/4 v1, 0x0

    if-eqz p4, :cond_1

    sget-object v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->Removed:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "Got cause for a target change that was not a removal"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v3, v1}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    .line 207
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    .line 208
    iput-object p3, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 211
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lio/grpc/Status;->isOk()Z

    move-result v1

    if-nez v1, :cond_2

    .line 212
    iput-object p4, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    goto :goto_2

    .line 214
    :cond_2
    iput-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    .line 216
    :goto_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 250
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 251
    return v0

    .line 253
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 257
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;

    .line 259
    .local v2, "that":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    if-eq v3, v4, :cond_2

    .line 260
    return v1

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 263
    return v1

    .line 265
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v3, v4}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 266
    return v1

    .line 269
    :cond_4
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    if-eqz v3, :cond_6

    .line 270
    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    if-eqz v4, :cond_5

    invoke-virtual {v3}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v3

    iget-object v4, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    invoke-virtual {v4}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/grpc/Status$Code;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_5
    move v0, v1

    :goto_0
    return v0

    .line 272
    :cond_6
    iget-object v3, v2, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    move v0, v1

    :goto_1
    return v0

    .line 254
    .end local v2    # "that":Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;
    :cond_8
    :goto_2
    return v1
.end method

.method public getCause()Lio/grpc/Status;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    return-object v0
.end method

.method public getChangeType()Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    return-object v0
.end method

.method public getResumeToken()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 278
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;->hashCode()I

    move-result v0

    .line 279
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 280
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->resumeToken:Lcom/google/protobuf/ByteString;

    invoke-virtual {v2}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 281
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->cause:Lio/grpc/Status;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v2

    invoke-virtual {v2}, Lio/grpc/Status$Code;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 282
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WatchTargetChange{changeType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->changeType:Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChangeType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$WatchTargetChange;->targetIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
