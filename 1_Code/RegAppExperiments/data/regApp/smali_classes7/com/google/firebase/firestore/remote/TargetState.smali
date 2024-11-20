.class final Lcom/google/firebase/firestore/remote/TargetState;
.super Ljava/lang/Object;
.source "TargetState.java"


# instance fields
.field private current:Z

.field private final documentChanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/firebase/firestore/model/DocumentKey;",
            "Lcom/google/firebase/firestore/core/DocumentViewChange$Type;",
            ">;"
        }
    .end annotation
.end field

.field private hasChanges:Z

.field private outstandingResponses:I

.field private resumeToken:Lcom/google/protobuf/ByteString;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/TargetState;->documentChanges:Ljava/util/Map;

    .line 46
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 49
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v1, p0, Lcom/google/firebase/firestore/remote/TargetState;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 51
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->current:Z

    return-void
.end method


# virtual methods
.method addDocumentChange(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/DocumentViewChange$Type;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "changeType"    # Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 125
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->documentChanges:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    return-void
.end method

.method clearChanges()V
    .locals 1

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 120
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->documentChanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 121
    return-void
.end method

.method hasChanges()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    return v0
.end method

.method isCurrent()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->current:Z

    return v0
.end method

.method isPending()Z
    .locals 1

    .line 66
    iget v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method markCurrent()V
    .locals 1

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 143
    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->current:Z

    .line 144
    return-void
.end method

.method recordPendingTargetRequest()V
    .locals 1

    .line 134
    iget v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    .line 135
    return-void
.end method

.method recordTargetResponse()V
    .locals 1

    .line 138
    iget v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->outstandingResponses:I

    .line 139
    return-void
.end method

.method removeDocumentChange(Lcom/google/firebase/firestore/model/DocumentKey;)V
    .locals 1
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;

    .line 129
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 130
    iget-object v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->documentChanges:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method toTargetChange()Lcom/google/firebase/firestore/remote/TargetChange;
    .locals 10

    .line 91
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 92
    .local v0, "addedDocuments":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 93
    .local v1, "modifiedDocuments":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    invoke-static {}, Lcom/google/firebase/firestore/model/DocumentKey;->emptyKeySet()Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 95
    .local v2, "removedDocuments":Lcom/google/firebase/database/collection/ImmutableSortedSet;, "Lcom/google/firebase/database/collection/ImmutableSortedSet<Lcom/google/firebase/firestore/model/DocumentKey;>;"
    iget-object v3, p0, Lcom/google/firebase/firestore/remote/TargetState;->documentChanges:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 96
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/DocumentViewChange$Type;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/firebase/firestore/model/DocumentKey;

    .line 97
    .local v5, "key":Lcom/google/firebase/firestore/model/DocumentKey;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;

    .line 98
    .local v6, "changeType":Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    sget-object v7, Lcom/google/firebase/firestore/remote/TargetState$1;->$SwitchMap$com$google$firebase$firestore$core$DocumentViewChange$Type:[I

    invoke-virtual {v6}, Lcom/google/firebase/firestore/core/DocumentViewChange$Type;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 109
    const-string v3, "Encountered invalid change type: %s"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/google/firebase/firestore/util/Assert;->fail(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/AssertionError;

    move-result-object v3

    throw v3

    .line 106
    :pswitch_0
    invoke-virtual {v2, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v2

    .line 107
    goto :goto_1

    .line 103
    :pswitch_1
    invoke-virtual {v1, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v1

    .line 104
    goto :goto_1

    .line 100
    :pswitch_2
    invoke-virtual {v0, v5}, Lcom/google/firebase/database/collection/ImmutableSortedSet;->insert(Ljava/lang/Object;)Lcom/google/firebase/database/collection/ImmutableSortedSet;

    move-result-object v0

    .line 101
    nop

    .line 111
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/core/DocumentViewChange$Type;>;"
    .end local v5    # "key":Lcom/google/firebase/firestore/model/DocumentKey;
    .end local v6    # "changeType":Lcom/google/firebase/firestore/core/DocumentViewChange$Type;
    :goto_1
    goto :goto_0

    .line 113
    :cond_0
    new-instance v3, Lcom/google/firebase/firestore/remote/TargetChange;

    iget-object v5, p0, Lcom/google/firebase/firestore/remote/TargetState;->resumeToken:Lcom/google/protobuf/ByteString;

    iget-boolean v6, p0, Lcom/google/firebase/firestore/remote/TargetState;->current:Z

    move-object v4, v3

    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/firebase/firestore/remote/TargetChange;-><init>(Lcom/google/protobuf/ByteString;ZLcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;Lcom/google/firebase/database/collection/ImmutableSortedSet;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateResumeToken(Lcom/google/protobuf/ByteString;)V
    .locals 1
    .param p1, "resumeToken"    # Lcom/google/protobuf/ByteString;

    .line 79
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/firebase/firestore/remote/TargetState;->hasChanges:Z

    .line 81
    iput-object p1, p0, Lcom/google/firebase/firestore/remote/TargetState;->resumeToken:Lcom/google/protobuf/ByteString;

    .line 83
    :cond_0
    return-void
.end method
