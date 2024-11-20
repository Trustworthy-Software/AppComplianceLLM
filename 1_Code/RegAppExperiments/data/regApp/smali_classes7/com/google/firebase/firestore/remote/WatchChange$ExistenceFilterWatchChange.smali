.class public final Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;
.super Lcom/google/firebase/firestore/remote/WatchChange;
.source "WatchChange.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/remote/WatchChange;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ExistenceFilterWatchChange"
.end annotation


# instance fields
.field private final existenceFilter:Lcom/google/firebase/firestore/remote/ExistenceFilter;

.field private final targetId:I


# direct methods
.method public constructor <init>(ILcom/google/firebase/firestore/remote/ExistenceFilter;)V
    .locals 1
    .param p1, "targetId"    # I
    .param p2, "existenceFilter"    # Lcom/google/firebase/firestore/remote/ExistenceFilter;

    .line 145
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/firebase/firestore/remote/WatchChange;-><init>(Lcom/google/firebase/firestore/remote/WatchChange$1;)V

    .line 146
    iput p1, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->targetId:I

    .line 147
    iput-object p2, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->existenceFilter:Lcom/google/firebase/firestore/remote/ExistenceFilter;

    .line 148
    return-void
.end method


# virtual methods
.method public getExistenceFilter()Lcom/google/firebase/firestore/remote/ExistenceFilter;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->existenceFilter:Lcom/google/firebase/firestore/remote/ExistenceFilter;

    return-object v0
.end method

.method public getTargetId()I
    .locals 1

    .line 152
    iget v0, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->targetId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ExistenceFilterWatchChange{targetId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->targetId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", existenceFilter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/remote/WatchChange$ExistenceFilterWatchChange;->existenceFilter:Lcom/google/firebase/firestore/remote/ExistenceFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
