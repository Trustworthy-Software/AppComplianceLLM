.class public final enum Lcom/google/firebase/firestore/AggregateSource;
.super Ljava/lang/Enum;
.source "AggregateSource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/firestore/AggregateSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/firestore/AggregateSource;

.field public static final enum SERVER:Lcom/google/firebase/firestore/AggregateSource;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 35
    new-instance v0, Lcom/google/firebase/firestore/AggregateSource;

    const-string v1, "SERVER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/firebase/firestore/AggregateSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/firebase/firestore/AggregateSource;->SERVER:Lcom/google/firebase/firestore/AggregateSource;

    .line 22
    filled-new-array {v0}, [Lcom/google/firebase/firestore/AggregateSource;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/firestore/AggregateSource;->$VALUES:[Lcom/google/firebase/firestore/AggregateSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/firestore/AggregateSource;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 22
    const-class v0, Lcom/google/firebase/firestore/AggregateSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/firestore/AggregateSource;

    return-object v0
.end method

.method public static values()[Lcom/google/firebase/firestore/AggregateSource;
    .locals 1

    .line 22
    sget-object v0, Lcom/google/firebase/firestore/AggregateSource;->$VALUES:[Lcom/google/firebase/firestore/AggregateSource;

    invoke-virtual {v0}, [Lcom/google/firebase/firestore/AggregateSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/firestore/AggregateSource;

    return-object v0
.end method
