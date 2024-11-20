.class public Lcom/google/firebase/firestore/util/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final AUTO_ID_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

.field private static final AUTO_ID_LENGTH:I = 0x14

.field private static final VOID_ERROR_TRANSFORMER:Lcom/google/android/gms/tasks/Continuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/Continuation<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/Util;->rand:Ljava/util/Random;

    .line 141
    new-instance v0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/google/firebase/firestore/util/Util;->VOID_ERROR_TRANSFORMER:Lcom/google/android/gms/tasks/Continuation;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 365
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static autoId()Ljava/lang/String;
    .locals 5

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    .line 54
    .local v2, "maxRandom":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x14

    if-ge v3, v4, :cond_0

    .line 55
    sget-object v4, Lcom/google/firebase/firestore/util/Util;->rand:Ljava/util/Random;

    invoke-virtual {v4, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static varargs collectUpdateArguments(ILjava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .param p0, "fieldPathOffset"    # I
    .param p1, "field"    # Ljava/lang/Object;
    .param p2, "val"    # Ljava/lang/Object;
    .param p3, "fieldsAndValues"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 167
    array-length v0, p3

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    .local v0, "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {v0, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 177
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 178
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 179
    .local v3, "fieldPath":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_1

    instance-of v4, v3, Lcom/google/firebase/firestore/FieldPath;

    if-eqz v4, :cond_0

    goto :goto_1

    .line 180
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Excepted field name at argument position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int v6, v2, p0

    add-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " but got "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " in call to update.  The arguments to update should alternate between field names and values"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 177
    .end local v3    # "fieldPath":Ljava/lang/Object;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 190
    .end local v2    # "i":I
    :cond_2
    return-object v0

    .line 168
    .end local v0    # "argumentList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing value in call to update().  There must be an even number of arguments that alternate between field names and values"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda2;-><init>()V

    return-object v0
.end method

.method public static compareBooleans(ZZ)I
    .locals 1
    .param p0, "b1"    # Z
    .param p1, "b2"    # Z

    .line 65
    if-ne p0, p1, :cond_0

    .line 66
    const/4 v0, 0x0

    return v0

    .line 67
    :cond_0
    if-eqz p0, :cond_1

    .line 68
    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public static compareByteArrays([B[B)I
    .locals 5
    .param p0, "left"    # [B
    .param p1, "right"    # [B

    .line 221
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 222
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 224
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    .line 225
    .local v2, "thisByte":I
    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xff

    .line 226
    .local v3, "otherByte":I
    if-ge v2, v3, :cond_0

    .line 227
    const/4 v4, -0x1

    return v4

    .line 228
    :cond_0
    if-le v2, v3, :cond_1

    .line 229
    const/4 v4, 0x1

    return v4

    .line 222
    .end local v2    # "thisByte":I
    .end local v3    # "otherByte":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 233
    .end local v1    # "i":I
    :cond_2
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v1

    return v1
.end method

.method public static compareByteStrings(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ByteString;)I
    .locals 5
    .param p0, "left"    # Lcom/google/protobuf/ByteString;
    .param p1, "right"    # Lcom/google/protobuf/ByteString;

    .line 237
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 238
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 240
    invoke-virtual {p0, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    .line 241
    .local v2, "thisByte":I
    invoke-virtual {p1, v1}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 242
    .local v3, "otherByte":I
    if-ge v2, v3, :cond_0

    .line 243
    const/4 v4, -0x1

    return v4

    .line 244
    :cond_0
    if-le v2, v3, :cond_1

    .line 245
    const/4 v4, 0x1

    return v4

    .line 238
    .end local v2    # "thisByte":I
    .end local v3    # "otherByte":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 249
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v1

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->size()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/firebase/firestore/util/Util;->compareIntegers(II)I

    move-result v1

    return v1
.end method

.method public static compareDoubles(DD)I
    .locals 1
    .param p0, "i1"    # D
    .param p2, "i2"    # D

    .line 98
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubles(DD)I

    move-result v0

    return v0
.end method

.method public static compareIntegers(II)I
    .locals 1
    .param p0, "i1"    # I
    .param p1, "i2"    # I

    .line 79
    if-ge p0, p1, :cond_0

    .line 80
    const/4 v0, -0x1

    return v0

    .line 81
    :cond_0
    if-le p0, p1, :cond_1

    .line 82
    const/4 v0, 0x1

    return v0

    .line 84
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static compareLongs(JJ)I
    .locals 1
    .param p0, "i1"    # J
    .param p2, "i2"    # J

    .line 93
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->compareLongs(JJ)I

    move-result v0

    return v0
.end method

.method public static compareMixed(DJ)I
    .locals 1
    .param p0, "doubleValue"    # D
    .param p2, "longValue"    # J

    .line 103
    invoke-static {p0, p1, p2, p3}, Lcom/google/cloud/datastore/core/number/NumberComparisonHelper;->firestoreCompareDoubleWithLong(DJ)I

    move-result v0

    return v0
.end method

.method private static convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .line 121
    instance-of v0, p0, Lio/grpc/StatusException;

    if-eqz v0, :cond_0

    .line 122
    move-object v0, p0

    check-cast v0, Lio/grpc/StatusException;

    .line 123
    .local v0, "statusException":Lio/grpc/StatusException;
    invoke-virtual {v0}, Lio/grpc/StatusException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v1

    return-object v1

    .line 124
    .end local v0    # "statusException":Lio/grpc/StatusException;
    :cond_0
    instance-of v0, p0, Lio/grpc/StatusRuntimeException;

    if-eqz v0, :cond_1

    .line 125
    move-object v0, p0

    check-cast v0, Lio/grpc/StatusRuntimeException;

    .line 126
    .local v0, "statusRuntimeException":Lio/grpc/StatusRuntimeException;
    invoke-virtual {v0}, Lio/grpc/StatusRuntimeException;->getStatus()Lio/grpc/Status;

    move-result-object v1

    invoke-static {v1}, Lcom/google/firebase/firestore/util/Util;->exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;

    move-result-object v1

    return-object v1

    .line 128
    .end local v0    # "statusRuntimeException":Lio/grpc/StatusRuntimeException;
    :cond_1
    return-object p0
.end method

.method public static convertThrowableToException(Ljava/lang/Throwable;)Ljava/lang/Exception;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 134
    instance-of v0, p0, Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 135
    move-object v0, p0

    check-cast v0, Ljava/lang/Exception;

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static crashMainThread(Ljava/lang/RuntimeException;)V
    .locals 2
    .param p0, "exception"    # Ljava/lang/RuntimeException;

    .line 213
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda1;-><init>(Ljava/lang/RuntimeException;)V

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 218
    return-void
.end method

.method public static diffCollections(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Collection<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 286
    .local p0, "before":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "after":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    .local p3, "onAdd":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    .local p4, "onRemove":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 287
    .local v0, "beforeEntries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 288
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 289
    .local v1, "afterEntries":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 291
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v2, v3, p2, p3, p4}, Lcom/google/firebase/firestore/util/Util;->diffCollections(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V

    .line 292
    return-void
.end method

.method private static diffCollections(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Iterator<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 324
    .local p0, "beforeSorted":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "afterSorted":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p3, "onAdd":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    .local p4, "onRemove":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    invoke-static {p0}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    .line 325
    .local v0, "beforeValue":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    .line 328
    .local v1, "afterValue":Ljava/lang/Object;, "TT;"
    :goto_0
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 360
    :cond_0
    return-void

    .line 329
    :cond_1
    :goto_1
    const/4 v2, 0x0

    .line 330
    .local v2, "added":Z
    const/4 v3, 0x0

    .line 332
    .local v3, "removed":Z
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 333
    invoke-interface {p2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 334
    .local v4, "cmp":I
    if-gez v4, :cond_2

    .line 337
    const/4 v3, 0x1

    goto :goto_2

    .line 338
    :cond_2
    if-lez v4, :cond_3

    .line 341
    const/4 v2, 0x1

    .line 343
    .end local v4    # "cmp":I
    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    if-eqz v0, :cond_5

    .line 344
    const/4 v3, 0x1

    goto :goto_3

    .line 346
    :cond_5
    const/4 v2, 0x1

    .line 349
    :goto_3
    if-eqz v2, :cond_6

    .line 350
    invoke-interface {p3, v1}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 351
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    .line 352
    :cond_6
    if-eqz v3, :cond_7

    .line 353
    invoke-interface {p4, v0}, Lcom/google/firebase/firestore/util/Consumer;->accept(Ljava/lang/Object;)V

    .line 354
    invoke-static {p0}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_4

    .line 356
    :cond_7
    invoke-static {p0}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    .line 357
    invoke-static {p1}, Lcom/google/firebase/firestore/util/Util;->advanceIterator(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v1

    .line 359
    .end local v2    # "added":Z
    .end local v3    # "removed":Z
    :goto_4
    goto :goto_0
.end method

.method public static diffCollections(Ljava/util/SortedSet;Ljava/util/SortedSet;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "TT;>;>(",
            "Ljava/util/SortedSet<",
            "TT;>;",
            "Ljava/util/SortedSet<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;",
            "Lcom/google/firebase/firestore/util/Consumer<",
            "TT;>;)V"
        }
    .end annotation

    .line 310
    .local p0, "before":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p1, "after":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TT;>;"
    .local p2, "onAdd":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    .local p3, "onRemove":Lcom/google/firebase/firestore/util/Consumer;, "Lcom/google/firebase/firestore/util/Consumer<TT;>;"
    nop

    .line 311
    invoke-interface {p0}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 312
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 313
    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda4;-><init>()V

    .line 310
    :goto_0
    invoke-static {v0, v1, v2, p2, p3}, Lcom/google/firebase/firestore/util/Util;->diffCollections(Ljava/util/Iterator;Ljava/util/Iterator;Ljava/util/Comparator;Lcom/google/firebase/firestore/util/Consumer;Lcom/google/firebase/firestore/util/Consumer;)V

    .line 316
    return-void
.end method

.method public static exceptionFromStatus(Lio/grpc/Status;)Lcom/google/firebase/firestore/FirebaseFirestoreException;
    .locals 4
    .param p0, "error"    # Lio/grpc/Status;

    .line 111
    invoke-virtual {p0}, Lio/grpc/Status;->asException()Lio/grpc/StatusException;

    move-result-object v0

    .line 112
    .local v0, "statusException":Lio/grpc/StatusException;
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    .line 113
    invoke-virtual {v0}, Lio/grpc/StatusException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lio/grpc/Status;->getCode()Lio/grpc/Status$Code;

    move-result-object v3

    invoke-virtual {v3}, Lio/grpc/Status$Code;->value()I

    move-result v3

    invoke-static {v3}, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->fromValue(I)Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    move-result-object v3

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    .line 112
    return-object v1
.end method

.method public static firstNEntries(Ljava/util/Map;ILjava/util/Comparator;)Ljava/util/Map;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I",
            "Ljava/util/Comparator<",
            "TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 388
    .local p0, "data":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p2, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<TV;>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    .line 389
    return-object p0

    .line 391
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 392
    .local v0, "sortedValues":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda5;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v1, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 395
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v2    # "i":I
    :cond_1
    return-object v1
.end method

.method static synthetic lambda$crashMainThread$1(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p0, "exception"    # Ljava/lang/RuntimeException;

    .line 216
    throw p0
.end method

.method static synthetic lambda$diffCollections$2(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .param p0, "l"    # Ljava/lang/Comparable;
    .param p1, "r"    # Ljava/lang/Comparable;

    .line 313
    invoke-interface {p0, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$firstNEntries$4(Ljava/util/Comparator;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "comp"    # Ljava/util/Comparator;
    .param p1, "l"    # Ljava/util/Map$Entry;
    .param p2, "r"    # Ljava/util/Map$Entry;

    .line 392
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$0(Lcom/google/android/gms/tasks/Task;)Ljava/lang/Void;
    .locals 4
    .param p0, "task"    # Lcom/google/android/gms/tasks/Task;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/firestore/util/Util;->convertStatusException(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 147
    .local v0, "e":Ljava/lang/Exception;
    instance-of v1, v0, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    if-eqz v1, :cond_1

    .line 148
    throw v0

    .line 150
    :cond_1
    new-instance v1, Lcom/google/firebase/firestore/FirebaseFirestoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;->UNKNOWN:Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;

    invoke-direct {v1, v2, v3, v0}, Lcom/google/firebase/firestore/FirebaseFirestoreException;-><init>(Ljava/lang/String;Lcom/google/firebase/firestore/FirebaseFirestoreException$Code;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic lambda$values$3(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 2
    .param p0, "map"    # Ljava/lang/Iterable;

    .line 371
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 372
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lcom/google/firebase/firestore/util/Util$1;

    invoke-direct {v1, v0}, Lcom/google/firebase/firestore/util/Util$1;-><init>(Ljava/util/Iterator;)V

    return-object v1
.end method

.method public static repeatSequence(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)Ljava/lang/StringBuilder;
    .locals 2
    .param p0, "sequence"    # Ljava/lang/CharSequence;
    .param p1, "count"    # I
    .param p2, "delimiter"    # Ljava/lang/CharSequence;

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_0

    .line 256
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 257
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 258
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 257
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static toDebugString(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 6
    .param p0, "bytes"    # Lcom/google/protobuf/ByteString;

    .line 194
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v0

    .line 195
    .local v0, "size":I
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, v0, 0x2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 196
    .local v1, "result":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 197
    invoke-virtual {p0, v2}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    .line 198
    .local v3, "value":I
    ushr-int/lit8 v4, v3, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 199
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 196
    .end local v3    # "value":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static typeName(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .line 206
    if-nez p0, :cond_0

    const-string v0, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static values(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/lang/Iterable<",
            "TV;>;"
        }
    .end annotation

    .line 370
    .local p0, "map":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v0, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/google/firebase/firestore/util/Util$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static voidErrorTransformer()Lcom/google/android/gms/tasks/Continuation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Continuation<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/google/firebase/firestore/util/Util;->VOID_ERROR_TRANSFORMER:Lcom/google/android/gms/tasks/Continuation;

    return-object v0
.end method
