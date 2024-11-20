.class public Lcom/google/firebase/firestore/Blob;
.super Ljava/lang/Object;
.source "Blob.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/firebase/firestore/Blob;",
        ">;"
    }
.end annotation


# instance fields
.field private final bytes:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>(Lcom/google/protobuf/ByteString;)V
    .locals 0
    .param p1, "bytes"    # Lcom/google/protobuf/ByteString;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    .line 31
    return-void
.end method

.method public static fromByteString(Lcom/google/protobuf/ByteString;)Lcom/google/firebase/firestore/Blob;
    .locals 1
    .param p0, "bytes"    # Lcom/google/protobuf/ByteString;

    .line 50
    const-string v0, "Provided ByteString must not be null."

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/google/firebase/firestore/Blob;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/Blob;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method

.method public static fromBytes([B)Lcom/google/firebase/firestore/Blob;
    .locals 2
    .param p0, "bytes"    # [B

    .line 42
    const-string v0, "Provided bytes array must not be null."

    invoke-static {p0, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/google/firebase/firestore/Blob;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFrom([B)Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/firebase/firestore/Blob;-><init>(Lcom/google/protobuf/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/firebase/firestore/Blob;)I
    .locals 2
    .param p1, "other"    # Lcom/google/firebase/firestore/Blob;

    .line 85
    iget-object v0, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    iget-object v1, p1, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    invoke-static {v0, v1}, Lcom/google/firebase/firestore/util/Util;->compareByteStrings(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 26
    check-cast p1, Lcom/google/firebase/firestore/Blob;

    invoke-virtual {p0, p1}, Lcom/google/firebase/firestore/Blob;->compareTo(Lcom/google/firebase/firestore/Blob;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .line 75
    instance-of v0, p1, Lcom/google/firebase/firestore/Blob;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/Blob;

    iget-object v1, v1, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v1}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->hashCode()I

    move-result v0

    return v0
.end method

.method public toByteString()Lcom/google/protobuf/ByteString;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    return-object v0
.end method

.method public toBytes()[B
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    invoke-virtual {v0}, Lcom/google/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blob { bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/Blob;->bytes:Lcom/google/protobuf/ByteString;

    invoke-static {v1}, Lcom/google/firebase/firestore/util/Util;->toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
