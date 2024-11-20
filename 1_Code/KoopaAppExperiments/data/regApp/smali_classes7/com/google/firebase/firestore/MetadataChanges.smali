.class public final enum Lcom/google/firebase/firestore/MetadataChanges;
.super Ljava/lang/Enum;
.source "MetadataChanges.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/MetadataChanges;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/MetadataChanges;

.field public static final enum EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

.field public static final enum INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 22
    new-instance v0, Lcom/google/firebase/firestore/MetadataChanges;

    const-string v1, "EXCLUDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/MetadataChanges;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/MetadataChanges;->EXCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 23
    new-instance v1, Lcom/google/firebase/firestore/MetadataChanges;

    const-string v2, "INCLUDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/firebase/firestore/MetadataChanges;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/firebase/firestore/MetadataChanges;->INCLUDE:Lcom/google/firebase/firestore/MetadataChanges;

    .line 21
    filled-new-array {v0, v1}, [Lcom/google/firebase/firestore/MetadataChanges;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/MetadataChanges;->$VALUES:[Lcom/google/firebase/firestore/MetadataChanges;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/MetadataChanges;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/google/firebase/firestore/MetadataChanges;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/MetadataChanges;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/MetadataChanges;
    .locals 1

    .line 21
    sget-object v0, Lcom/google/firebase/firestore/MetadataChanges;->$VALUES:[Lcom/google/firebase/firestore/MetadataChanges;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/MetadataChanges;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/MetadataChanges;

    return-object v0
.end method
