.class public Lcom/google/firebase/firestore/DocumentChange;
.super Ljava/lang/Object;
.source "DocumentChange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/DocumentChange$Type;
    }
.end annotation


# instance fields
.field private final document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

.field private final newIndex:I

.field private final oldIndex:I

.field private final type:Lcom/google/firebase/firestore/DocumentChange$Type;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentChange$Type;II)V
    .locals 0
    .param p1, "document"    # Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .param p2, "type"    # Lcom/google/firebase/firestore/DocumentChange$Type;
    .param p3, "oldIndex"    # I
    .param p4, "newIndex"    # I

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p2, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    .line 64
    iput-object p1, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 65
    iput p3, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    .line 66
    iput p4, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    .line 67
    return-void
.end method

.method static changesFromSnapshot(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/MetadataChanges;Lcom/google/firebase/firestore/core/ViewSnapshot;)Ljava/util/List;
    .locals 16
    .param p0, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p1, "metadataChanges"    # Lcom/google/firebase/firestore/MetadataChanges;
    .param p2, "snapshot"    # Lcom/google/firebase/firestore/core/ViewSnapshot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/FirebaseFirestore;",
            "Lcom/google/firebase/firestore/MetadataChanges;",
            "Lcom/google/firebase/firestore/core/ViewSnapshot;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/firebase/firestore/DocumentChange;",
            ">;"
        }
    .end annotation

    .line 129
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v1, "documentChanges":Ljava/util/List;, "Ljava/util/List<Lcom/google/firebase/firestore/DocumentChange;>;"
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getOldDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentSet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 134
    const/4 v2, 0x0

    .line 135
    .local v2, "index":I
    const/4 v5, 0x0

    .line 136
    .local v5, "lastDoc":Lcom/google/firebase/firestore/model/Document;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 137
    .local v7, "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v8

    .line 138
    .local v8, "document":Lcom/google/firebase/firestore/model/Document;
    nop

    .line 142
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v9

    .line 143
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v10

    invoke-interface {v8}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 139
    invoke-static {v0, v8, v9, v10}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v9

    .line 144
    .local v9, "documentSnapshot":Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    nop

    .line 145
    invoke-virtual {v7}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v10

    sget-object v11, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ADDED:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v10, v11, :cond_0

    move v10, v3

    goto :goto_1

    :cond_0
    move v10, v4

    :goto_1
    new-array v11, v4, [Ljava/lang/Object;

    .line 144
    const-string v12, "Invalid added event for first snapshot"

    invoke-static {v10, v12, v11}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 147
    if-eqz v5, :cond_2

    .line 148
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getQuery()Lcom/google/firebase/firestore/core/Query;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/firebase/firestore/core/Query;->comparator()Ljava/util/Comparator;

    move-result-object v10

    invoke-interface {v10, v5, v8}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v10

    if-gez v10, :cond_1

    goto :goto_2

    :cond_1
    move v10, v4

    goto :goto_3

    :cond_2
    :goto_2
    move v10, v3

    :goto_3
    new-array v11, v4, [Ljava/lang/Object;

    .line 147
    const-string v12, "Got added events in wrong order"

    invoke-static {v10, v12, v11}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v10, Lcom/google/firebase/firestore/DocumentChange;

    sget-object v11, Lcom/google/firebase/firestore/DocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/DocumentChange$Type;

    add-int/lit8 v12, v2, 0x1

    .end local v2    # "index":I
    .local v12, "index":I
    const/4 v13, -0x1

    invoke-direct {v10, v9, v11, v13, v2}, Lcom/google/firebase/firestore/DocumentChange;-><init>(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentChange$Type;II)V

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object v5, v8

    .line 152
    .end local v7    # "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    .end local v8    # "document":Lcom/google/firebase/firestore/model/Document;
    .end local v9    # "documentSnapshot":Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    move v2, v12

    goto :goto_0

    .line 153
    .end local v5    # "lastDoc":Lcom/google/firebase/firestore/model/Document;
    .end local v12    # "index":I
    :cond_3
    move-object/from16 v8, p1

    goto/16 :goto_9

    .line 156
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getOldDocuments()Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    .line 157
    .local v2, "indexTracker":Lcom/google/firebase/firestore/model/DocumentSet;
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getChanges()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 158
    .local v6, "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    sget-object v7, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    move-object/from16 v8, p1

    if-ne v8, v7, :cond_5

    .line 159
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v7

    sget-object v9, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->METADATA:Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    if-ne v7, v9, :cond_5

    .line 160
    goto :goto_4

    .line 162
    :cond_5
    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getDocument()Lcom/google/firebase/firestore/model/Document;

    move-result-object v7

    .line 163
    .local v7, "document":Lcom/google/firebase/firestore/model/Document;
    nop

    .line 167
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->isFromCache()Z

    move-result v9

    .line 168
    invoke-virtual/range {p2 .. p2}, Lcom/google/firebase/firestore/core/ViewSnapshot;->getMutatedKeys()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v10

    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    .line 164
    invoke-static {v0, v7, v9, v10}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    move-result-object v9

    .line 170
    .restart local v9    # "documentSnapshot":Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    invoke-static {v6}, Lcom/google/firebase/firestore/DocumentChange;->getType(Lcom/google/firebase/firestore/core/DocumentViewChange;)Lcom/google/firebase/firestore/DocumentChange$Type;

    move-result-object v10

    .line 171
    .local v10, "type":Lcom/google/firebase/firestore/DocumentChange$Type;
    sget-object v11, Lcom/google/firebase/firestore/DocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/DocumentChange$Type;

    const-string v12, "Index for document not found"

    if-eq v10, v11, :cond_7

    .line 172
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/google/firebase/firestore/model/DocumentSet;->indexOf(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v11

    .line 173
    .local v11, "oldIndex":I
    if-ltz v11, :cond_6

    move v13, v3

    goto :goto_5

    :cond_6
    move v13, v4

    :goto_5
    new-array v14, v4, [Ljava/lang/Object;

    invoke-static {v13, v12, v14}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 174
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/firebase/firestore/model/DocumentSet;->remove(Lcom/google/firebase/firestore/model/DocumentKey;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    goto :goto_6

    .line 176
    .end local v11    # "oldIndex":I
    :cond_7
    const/4 v11, -0x1

    .line 178
    .restart local v11    # "oldIndex":I
    :goto_6
    sget-object v13, Lcom/google/firebase/firestore/DocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/DocumentChange$Type;

    if-eq v10, v13, :cond_9

    .line 179
    invoke-virtual {v2, v7}, Lcom/google/firebase/firestore/model/DocumentSet;->add(Lcom/google/firebase/firestore/model/Document;)Lcom/google/firebase/firestore/model/DocumentSet;

    move-result-object v2

    .line 180
    invoke-interface {v7}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v13

    invoke-virtual {v2, v13}, Lcom/google/firebase/firestore/model/DocumentSet;->indexOf(Lcom/google/firebase/firestore/model/DocumentKey;)I

    move-result v13

    .line 181
    .local v13, "newIndex":I
    if-ltz v13, :cond_8

    move v14, v3

    goto :goto_7

    :cond_8
    move v14, v4

    :goto_7
    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v14, v12, v15}, Lcom/google/firebase/firestore/util/Assert;->hardAssert(ZLjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 183
    .end local v13    # "newIndex":I
    :cond_9
    const/4 v13, -0x1

    .line 185
    .restart local v13    # "newIndex":I
    :goto_8
    new-instance v12, Lcom/google/firebase/firestore/DocumentChange;

    invoke-direct {v12, v9, v10, v11, v13}, Lcom/google/firebase/firestore/DocumentChange;-><init>(Lcom/google/firebase/firestore/QueryDocumentSnapshot;Lcom/google/firebase/firestore/DocumentChange$Type;II)V

    invoke-interface {v1, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    .end local v6    # "change":Lcom/google/firebase/firestore/core/DocumentViewChange;
    .end local v7    # "document":Lcom/google/firebase/firestore/model/Document;
    .end local v9    # "documentSnapshot":Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .end local v10    # "type":Lcom/google/firebase/firestore/DocumentChange$Type;
    .end local v11    # "oldIndex":I
    .end local v13    # "newIndex":I
    goto :goto_4

    .line 157
    :cond_a
    move-object/from16 v8, p1

    .line 188
    .end local v2    # "indexTracker":Lcom/google/firebase/firestore/model/DocumentSet;
    :goto_9
    return-object v1
.end method

.method private static getType(Lcom/google/firebase/firestore/core/DocumentViewChange;)Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 3
    .param p0, "change"    # Lcom/google/firebase/firestore/core/DocumentViewChange;

    .line 192
    sget-object v0, Lcom/google/firebase/firestore/DocumentChange$1;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 201
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown view change type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/firebase/firestore/core/DocumentViewChange;->getType()Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 199
    :pswitch_0
    sget-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->REMOVED:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0

    .line 197
    :pswitch_1
    sget-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->MODIFIED:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0

    .line 194
    :pswitch_2
    sget-object v0, Lcom/google/firebase/firestore/DocumentChange$Type;->ADDED:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .line 71
    instance-of v0, p1, Lcom/google/firebase/firestore/DocumentChange;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/google/firebase/firestore/DocumentChange;

    .line 73
    .local v0, "that":Lcom/google/firebase/firestore/DocumentChange;
    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    iget-object v3, v0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/DocumentChange$Type;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    iget-object v3, v0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    .line 74
    invoke-virtual {v2, v3}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    iget v3, v0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    if-ne v2, v3, :cond_0

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    iget v3, v0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 73
    :goto_0
    return v1

    .line 78
    .end local v0    # "that":Lcom/google/firebase/firestore/DocumentChange;
    :cond_1
    return v1
.end method

.method public getDocument()Lcom/google/firebase/firestore/QueryDocumentSnapshot;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    return-object v0
.end method

.method public getNewIndex()I
    .locals 1

    .line 123
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    return v0
.end method

.method public getOldIndex()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    return v0
.end method

.method public getType()Lcom/google/firebase/firestore/DocumentChange$Type;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentChange;->type:Lcom/google/firebase/firestore/DocumentChange$Type;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/DocumentChange$Type;->hashCode()I

    move-result v0

    .line 84
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentChange;->document:Lcom/google/firebase/firestore/QueryDocumentSnapshot;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/QueryDocumentSnapshot;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->oldIndex:I

    add-int/2addr v0, v2

    .line 86
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/firebase/firestore/DocumentChange;->newIndex:I

    add-int/2addr v1, v2

    .line 87
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
