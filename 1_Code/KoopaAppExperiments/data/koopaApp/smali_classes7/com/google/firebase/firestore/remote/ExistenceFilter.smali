.class public final Lcom/google/firebase/firestore/remote/ExistenceFilter;
.super Ljava/lang/Object;
.source "ExistenceFilter.java"


# instance fields
.field private final count:I

.field private unchangedNames:Lcom/google/firestore/v1/BloomFilter;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "count"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->count:I

    .line 27
    return-void
.end method

.method public constructor <init>(ILcom/google/firestore/v1/BloomFilter;)V
    .locals 0
    .param p1, "count"    # I
    .param p2, "unchangedNames"    # Lcom/google/firestore/v1/BloomFilter;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->count:I

    .line 31
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->unchangedNames:Lcom/google/firestore/v1/BloomFilter;

    .line 32
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->count:I

    return v0
.end method

.method public getUnchangedNames()Lcom/google/firestore/v1/BloomFilter;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->unchangedNames:Lcom/google/firestore/v1/BloomFilter;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistenceFilter{count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->count:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", unchangedNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/ExistenceFilter;->unchangedNames:Lcom/google/firestore/v1/BloomFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
