.class synthetic Lcom/google/firebase/firestore/local/LocalSerializer$1;
.super Ljava/lang/Object;
.source "LocalSerializer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/firebase/firestore/local/LocalSerializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

.field static final synthetic $SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 243
    invoke-static {}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->values()[Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->DOCUMENTS:Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$Target$TargetTypeCase:[I

    sget-object v3, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->QUERY:Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/proto/Target$TargetTypeCase;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 73
    :goto_1
    invoke-static {}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->values()[Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    :try_start_2
    sget-object v3, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    invoke-virtual {v3}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    :goto_2
    :try_start_3
    sget-object v1, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    sget-object v2, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->NO_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    invoke-virtual {v2}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    :try_start_4
    sget-object v0, Lcom/google/firebase/firestore/local/LocalSerializer$1;->$SwitchMap$com$google$firebase$firestore$proto$MaybeDocument$DocumentTypeCase:[I

    sget-object v1, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->UNKNOWN_DOCUMENT:Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;

    invoke-virtual {v1}, Lcom/google/firebase/firestore/proto/MaybeDocument$DocumentTypeCase;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    :goto_4
    return-void
.end method
