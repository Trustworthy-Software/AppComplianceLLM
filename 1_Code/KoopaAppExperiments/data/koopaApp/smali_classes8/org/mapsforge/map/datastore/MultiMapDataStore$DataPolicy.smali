.class public final enum Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
.super Ljava/lang/Enum;
.source "MultiMapDataStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mapsforge/map/datastore/MultiMapDataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DataPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

.field public static final enum DEDUPLICATE:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

.field public static final enum RETURN_ALL:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

.field public static final enum RETURN_FIRST:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    new-instance v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const-string v1, "RETURN_FIRST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->RETURN_FIRST:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    .line 42
    new-instance v1, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const-string v2, "RETURN_ALL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->RETURN_ALL:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    .line 43
    new-instance v2, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    const-string v3, "DEDUPLICATE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->DEDUPLICATE:Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    .line 40
    filled-new-array {v0, v1, v2}, [Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    move-result-object v0

    sput-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->$VALUES:[Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 40
    const-class v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    return-object v0
.end method

.method public static values()[Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;
    .locals 1

    .line 40
    sget-object v0, Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->$VALUES:[Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    invoke-virtual {v0}, [Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/mapsforge/map/datastore/MultiMapDataStore$DataPolicy;

    return-object v0
.end method
