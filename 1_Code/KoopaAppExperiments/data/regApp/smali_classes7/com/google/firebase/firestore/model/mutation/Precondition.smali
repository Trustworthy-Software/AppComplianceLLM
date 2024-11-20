.class public final Lcom/google/firebase/firestore/model/mutation/Precondition;
.super Ljava/lang/Object;
.source "Precondition.java"


# static fields
.field public static final NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;


# instance fields
.field private final exists:Ljava/lang/Boolean;

.field private final updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    sput-object v0, Lcom/google/firebase/firestore/model/mutation/Precondition;->NONE:Lcom/google/firebase/firestore/model/mutation/Precondition;

    return-void
.end method

.method private constructor <init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "updateTime"    # Lcom/google/firebase/firestore/model/SnapshotVersion;
    .param p2, "exists"    # Ljava/lang/Boolean;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    const-string v2, "Precondition can specify \"exists\" or \"updateTime\" but not both"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v0}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 42
    iput-object p1, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 43
    iput-object p2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method public static exists(Z)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 3
    .param p0, "exists"    # Z

    .line 48
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    return-object v0
.end method

.method public static updateTime(Lcom/google/firebase/firestore/model/SnapshotVersion;)Lcom/google/firebase/firestore/model/mutation/Precondition;
    .locals 2
    .param p0, "version"    # Lcom/google/firebase/firestore/model/SnapshotVersion;

    .line 53
    new-instance v0, Lcom/google/firebase/firestore/model/mutation/Precondition;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/firebase/firestore/model/mutation/Precondition;-><init>(Lcom/google/firebase/firestore/model/SnapshotVersion;Ljava/lang/Boolean;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 88
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 89
    return v0

    .line 91
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    .line 95
    :cond_1
    move-object v2, p1

    check-cast v2, Lcom/google/firebase/firestore/model/mutation/Precondition;

    .line 97
    .local v2, "that":Lcom/google/firebase/firestore/model/mutation/Precondition;
    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-eqz v3, :cond_2

    iget-object v4, v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v3, v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-eqz v3, :cond_3

    .line 98
    :goto_0
    return v1

    .line 100
    :cond_3
    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v3, :cond_4

    iget-object v0, v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    invoke-virtual {v3, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    return v0

    .line 92
    .end local v2    # "that":Lcom/google/firebase/firestore/model/mutation/Precondition;
    :cond_6
    :goto_2
    return v1
.end method

.method public getExists()Ljava/lang/Boolean;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getUpdateTime()Lcom/google/firebase/firestore/model/SnapshotVersion;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/SnapshotVersion;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 106
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v2, v1

    .line 107
    .end local v0    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public isNone()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isValidFor(Lcom/google/firebase/firestore/model/MutableDocument;)Z
    .locals 4
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/MutableDocument;

    .line 76
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->getVersion()Lcom/google/firebase/firestore/model/SnapshotVersion;

    move-result-object v0

    iget-object v3, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v3}, Lcom/google/firebase/firestore/model/SnapshotVersion;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 79
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/model/MutableDocument;->isFoundDocument()Z

    move-result v3

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1

    .line 81
    :cond_3
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result v0

    const-string v3, "Precondition should be empty"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 82
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/google/firebase/firestore/model/mutation/Precondition;->isNone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const-string v0, "Precondition{<none>}"

    return-object v0

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    const-string v1, "}"

    if-eqz v0, :cond_1

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precondition{updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->updateTime:Lcom/google/firebase/firestore/model/SnapshotVersion;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Precondition{exists="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/firebase/firestore/model/mutation/Precondition;->exists:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Invalid Precondition"

    invoke-static {v1, v0}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v0

    throw v0
.end method
