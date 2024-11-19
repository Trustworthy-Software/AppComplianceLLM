.class public Lcom/google/firebase/firestore/DocumentSnapshot;
.super Ljava/lang/Object;
.source "DocumentSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    }
.end annotation


# instance fields
.field private final doc:Lcom/google/firebase/firestore/model/Document;

.field private final firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

.field private final key:Lcom/google/firebase/firestore/model/DocumentKey;

.field private final metadata:Lcom/google/firebase/firestore/SnapshotMetadata;


# direct methods
.method constructor <init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V
    .locals 1
    .param p1, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p2, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p3, "doc"    # Lcom/google/firebase/firestore/model/Document;
    .param p4, "isFromCache"    # Z
    .param p5, "hasPendingWrites"    # Z

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/FirebaseFirestore;

    iput-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    .line 87
    invoke-static {p2}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/model/DocumentKey;

    iput-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 88
    iput-object p3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    .line 89
    new-instance v0, Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-direct {v0, p5, p4}, Lcom/google/firebase/firestore/SnapshotMetadata;-><init>(ZZ)V

    iput-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 90
    return-void
.end method

.method private castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 496
    .local p3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 497
    const/4 v0, 0x0

    return-object v0

    .line 498
    :cond_0
    invoke-virtual {p3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 499
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static fromDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/Document;ZZ)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 7
    .param p0, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p1, "doc"    # Lcom/google/firebase/firestore/model/Document;
    .param p2, "fromCache"    # Z
    .param p3, "hasPendingWrites"    # Z

    .line 94
    new-instance v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    invoke-interface {p1}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/DocumentSnapshot;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V

    return-object v6
.end method

.method static fromNoDocument(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Z)Lcom/google/firebase/firestore/DocumentSnapshot;
    .locals 7
    .param p0, "firestore"    # Lcom/google/firebase/firestore/FirebaseFirestore;
    .param p1, "key"    # Lcom/google/firebase/firestore/model/DocumentKey;
    .param p2, "fromCache"    # Z

    .line 99
    new-instance v6, Lcom/google/firebase/firestore/DocumentSnapshot;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/firebase/firestore/DocumentSnapshot;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/model/Document;ZZ)V

    return-object v6
.end method

.method private getInternal(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 3
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/model/FieldPath;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 508
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    .line 509
    invoke-interface {v0, p1}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    .line 510
    .local v0, "val":Lcom/google/firestore/v1/Value;
    if-eqz v0, :cond_0

    .line 511
    new-instance v1, Lcom/google/firebase/firestore/UserDataWriter;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v1, v2, p2}, Lcom/google/firebase/firestore/UserDataWriter;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V

    .line 512
    .local v1, "userDataWriter":Lcom/google/firebase/firestore/UserDataWriter;
    invoke-virtual {v1, v0}, Lcom/google/firebase/firestore/UserDataWriter;->convertValue(Lcom/google/firestore/v1/Value;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 515
    .end local v0    # "val":Lcom/google/firestore/v1/Value;
    .end local v1    # "userDataWriter":Lcom/google/firebase/firestore/UserDataWriter;
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 489
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Provided field must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    .line 491
    .local v0, "value":Ljava/lang/Object;
    invoke-direct {p0, v0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public contains(Lcom/google/firebase/firestore/FieldPath;)Z
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 205
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/firebase/firestore/model/Document;->getField(Lcom/google/firebase/firestore/model/FieldPath;)Lcom/google/firestore/v1/Value;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 194
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->contains(Lcom/google/firebase/firestore/FieldPath;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 520
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 521
    return v0

    .line 523
    :cond_0
    instance-of v1, p1, Lcom/google/firebase/firestore/DocumentSnapshot;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 524
    return v2

    .line 526
    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/google/firebase/firestore/DocumentSnapshot;

    .line 527
    .local v1, "other":Lcom/google/firebase/firestore/DocumentSnapshot;
    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    .line 528
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/model/DocumentKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-nez v3, :cond_3

    goto :goto_0

    :cond_2
    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    .line 529
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_0
    iget-object v3, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    iget-object v4, v1, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    .line 530
    invoke-virtual {v3, v4}, Lcom/google/firebase/firestore/SnapshotMetadata;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v0, v2

    .line 527
    :goto_1
    return v0
.end method

.method public exists()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Lcom/google/firebase/firestore/FieldPath;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;

    .line 242
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 256
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v0, "Provided serverTimestampBehavior value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    invoke-virtual {p1}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getInternal(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 303
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 2
    .param p1, "fieldPath"    # Lcom/google/firebase/firestore/FieldPath;
    .param p3, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/firebase/firestore/FieldPath;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    .line 321
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1, p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    .line 322
    .local v0, "data":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 323
    const/4 v1, 0x0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getReference()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-static {v0, p2, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentReference;)Ljava/lang/Object;

    move-result-object v1

    .line 322
    :goto_0
    return-object v1
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;

    .line 217
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, v0, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 231
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 272
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    sget-object v1, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, v0, p2, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;
    .param p3, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    .line 290
    .local p2, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/google/firebase/firestore/DocumentSnapshot;->get(Lcom/google/firebase/firestore/FieldPath;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(Ljava/lang/String;)Lcom/google/firebase/firestore/Blob;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 450
    const-class v0, Lcom/google/firebase/firestore/Blob;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/Blob;

    return-object v0
.end method

.method public getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 336
    const-class v0, Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    return-object v0
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 132
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getData(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Map;
    .locals 2
    .param p1, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 145
    const-string v0, "Provided serverTimestampBehavior value must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v0, Lcom/google/firebase/firestore/UserDataWriter;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, p1}, Lcom/google/firebase/firestore/UserDataWriter;-><init>(Lcom/google/firebase/firestore/FirebaseFirestore;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)V

    .line 148
    .local v0, "userDataWriter":Lcom/google/firebase/firestore/UserDataWriter;
    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/firestore/model/ObjectValue;->getFieldsMap()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/firestore/UserDataWriter;->convertObject(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 386
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getDate(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getDate(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Date;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 401
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v0, "Provided serverTimestampBehavior value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTimestamp(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    .line 405
    .local v0, "timestamp":Lcom/google/firebase/Timestamp;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/firebase/Timestamp;->toDate()Ljava/util/Date;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method getDocument()Lcom/google/firebase/firestore/model/Document;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    return-object v0
.end method

.method public getDocumentReference(Ljava/lang/String;)Lcom/google/firebase/firestore/DocumentReference;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 474
    const-class v0, Lcom/google/firebase/firestore/DocumentReference;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/DocumentReference;

    return-object v0
.end method

.method public getDouble(Ljava/lang/String;)Ljava/lang/Double;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .line 348
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 349
    .local v0, "val":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getGeoPoint(Ljava/lang/String;)Lcom/google/firebase/firestore/GeoPoint;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 462
    const-class v0, Lcom/google/firebase/firestore/GeoPoint;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/GeoPoint;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0}, Lcom/google/firebase/firestore/model/DocumentKey;->getDocumentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLong(Ljava/lang/String;)Ljava/lang/Long;
    .locals 3
    .param p1, "field"    # Ljava/lang/String;

    .line 373
    const-class v0, Ljava/lang/Number;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    .line 374
    .local v0, "val":Ljava/lang/Number;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public getMetadata()Lcom/google/firebase/firestore/SnapshotMetadata;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    return-object v0
.end method

.method public getReference()Lcom/google/firebase/firestore/DocumentReference;
    .locals 3

    .line 484
    new-instance v0, Lcom/google/firebase/firestore/DocumentReference;

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/DocumentReference;-><init>(Lcom/google/firebase/firestore/model/DocumentKey;Lcom/google/firebase/firestore/FirebaseFirestore;)V

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 361
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTypedValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;)Lcom/google/firebase/Timestamp;
    .locals 1
    .param p1, "field"    # Ljava/lang/String;

    .line 417
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getTimestamp(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Lcom/google/firebase/Timestamp;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp(Ljava/lang/String;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Lcom/google/firebase/Timestamp;
    .locals 2
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    .line 432
    const-string v0, "Provided field path must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v0, "Provided serverTimestampBehavior value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    nop

    .line 437
    invoke-static {p1}, Lcom/google/firebase/firestore/FieldPath;->fromDotSeparatedPath(Ljava/lang/String;)Lcom/google/firebase/firestore/FieldPath;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/firestore/FieldPath;->getInternalPath()Lcom/google/firebase/firestore/model/FieldPath;

    move-result-object v0

    .line 436
    invoke-direct {p0, v0, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getInternal(Lcom/google/firebase/firestore/model/FieldPath;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    .line 438
    .local v0, "maybeTimestamp":Ljava/lang/Object;
    const-class v1, Lcom/google/firebase/Timestamp;

    invoke-direct {p0, v0, p1, v1}, Lcom/google/firebase/firestore/DocumentSnapshot;->castTypedValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/Timestamp;

    return-object v1
.end method

.method public hashCode()I
    .locals 4

    .line 535
    iget-object v0, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->firestore:Lcom/google/firebase/firestore/FirebaseFirestore;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 536
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 537
    .end local v0    # "hash":I
    .local v1, "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getKey()Lcom/google/firebase/firestore/model/DocumentKey;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/DocumentKey;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v0, v2

    .line 538
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/firebase/firestore/model/Document;->getData()Lcom/google/firebase/firestore/model/ObjectValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/firestore/model/ObjectValue;->hashCode()I

    move-result v3

    :cond_1
    add-int/2addr v1, v3

    .line 539
    .end local v0    # "hash":I
    .restart local v1    # "hash":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/SnapshotMetadata;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 540
    .end local v1    # "hash":I
    .restart local v0    # "hash":I
    return v0
.end method

.method public toObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 161
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;->DEFAULT:Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;

    invoke-virtual {p0, p1, v0}, Lcom/google/firebase/firestore/DocumentSnapshot;->toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toObject(Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/lang/Object;
    .locals 2
    .param p2, "serverTimestampBehavior"    # Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;",
            ")TT;"
        }
    .end annotation

    .line 177
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "Provided POJO type must not be null."

    invoke-static {p1, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v0, "Provided serverTimestampBehavior value must not be null."

    invoke-static {p2, v0}, Lcom/google/firebase/firestore/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-virtual {p0, p2}, Lcom/google/firebase/firestore/DocumentSnapshot;->getData(Lcom/google/firebase/firestore/DocumentSnapshot$ServerTimestampBehavior;)Ljava/util/Map;

    move-result-object v0

    .line 181
    .local v0, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v0, :cond_0

    .line 182
    const/4 v1, 0x0

    goto :goto_0

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/google/firebase/firestore/DocumentSnapshot;->getReference()Lcom/google/firebase/firestore/DocumentReference;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/google/firebase/firestore/util/CustomClassMapper;->convertToCustomClass(Ljava/lang/Object;Ljava/lang/Class;Lcom/google/firebase/firestore/DocumentReference;)Ljava/lang/Object;

    move-result-object v1

    .line 181
    :goto_0
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DocumentSnapshot{key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->key:Lcom/google/firebase/firestore/model/DocumentKey;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->metadata:Lcom/google/firebase/firestore/SnapshotMetadata;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", doc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/firebase/firestore/DocumentSnapshot;->doc:Lcom/google/firebase/firestore/model/Document;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
