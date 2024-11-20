.class public Lcom/google/firebase/firestore/core/DocumentViewChange;
.super Ljava/lang/Object;
.source "DocumentViewChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    }
.end annotation


# instance fields
.field private final document:Lcom/google/firebase/firestore/model/Document;

.field private final type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;


# direct methods
.method private constructor <init>(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)V
    .locals 0
    .param p1, "type"    # Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .param p2, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 42
    iput-object p2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    .line 43
    return-void
.end method

.method public static create(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/core/DocumentViewChange;
    .locals 1
    .param p0, "type"    # Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .param p1, "document"    # Lcom/google/firebase/firestore/model/Document;

    .line 33
    new-instance v0, Lcom/google/firebase/firestore/core/DocumentViewChange;

    invoke-direct {v0, p0, p1}, Lcom/google/firebase/firestore/core/DocumentViewChange;-><init>(Lcom/google/firebase/firestore/core/DocumentViewChange$Type;Lcom/google/firebase/firestore/model/Document;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 55
    instance-of v0, p1, Lcom/google/firebase/firestore/core/DocumentViewChange;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 60
    .local v0, "other":Lcom/google/firebase/firestore/core/DocumentViewChange;
    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    iget-object v3, v0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 65
    const/16 v0, 0x3d

    .line 66
    .local v0, "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 67
    .end local v0    # "res":I
    .local v1, "res":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 68
    .end local v1    # "res":I
    .restart local v0    # "res":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 69
    .end local v0    # "res":I
    .restart local v1    # "res":I
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentViewChange("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->document:Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/core/DocumentViewChange;->type:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
