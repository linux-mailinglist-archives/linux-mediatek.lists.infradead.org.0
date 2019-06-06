Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2DB337967
	for <lists+linux-mediatek@lfdr.de>; Thu,  6 Jun 2019 18:20:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PXDYWHSHRnNv+l32RzqMhp/Tu1tgoDx+Cdmzg5/SGkw=; b=DePg3/6InCAqL7
	ppfT+OIbpQskGnbT/jeGVF6/DDQK37G0uAQnY3iAKf+IEENFO6tJm0XuqzJzicaeBadsFtNoUR97W
	9obcHI5ol38amQhbRbehShPmBlJFrQLN9jrkl1KKOxmQwHFDTV4+OG7/fwck/7EEgc/nLWRrZfIWw
	wCXyjN1bv2b0mmq3rf8cXajDZTmP4mBNBUNwj9L6duXYtiJMbq8VTyRMw85vn/qbd9I0M7aC+kwIH
	+nzzNcJuIXZ322SFwmxf/oGx/vjiRcOFTMzn397UmnFsvZrvVXXqpN6hovAQIJ1hTlQu5A6OvCmze
	uZtwYgCtDa5+cVKWsC2g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYv7K-0000gz-TH; Thu, 06 Jun 2019 16:19:54 +0000
Received: from mail-io1-f65.google.com ([209.85.166.65])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYv7H-0000gc-6v
 for linux-mediatek@lists.infradead.org; Thu, 06 Jun 2019 16:19:52 +0000
Received: by mail-io1-f65.google.com with SMTP id e5so667692iok.4
 for <linux-mediatek@lists.infradead.org>; Thu, 06 Jun 2019 09:19:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=7AZryVPm9WEZf89lWXbEGTDn4y+TgVuIZXrDppDnWmE=;
 b=PAMO+I2wGrxNWzJMedZfa/jQAklwHBl7SACZ29Yr1KQv6nzLp4wJ70btAiwj648U7Z
 LAtY07n2sj1eZsA9UvQP2GEiWx5xKGtO4Tjf25YKTEweih1JmjqTRKhcxzc6euPFnEW0
 2pCvlLqY2G6XXKNK1sBCqJb0luUs8lJnPx/AMTA3YC11qlLW91RLUnNADAav76UyUwi+
 U9GkmAYxiko3bh1tpbI5f+lDOJTIDzEKZiq3lMFgwdpHlBiXZml/+JpdGlKUkRXEyHH2
 XvfNoocnA17o+yjdlavKxcEZgWbnFHeOQ32gPNcEDO2RGKOBu4AxCtkL+iVCWYywClmv
 A/Hg==
X-Gm-Message-State: APjAAAVfzE7JTHKB4vK8agnauKRS/FoEN9eoDSNbkeHlOkmTLsnoz8C/
 EO93JyZQpOvQgquy6Nb8cmj5quWGscJRuQP5OlOD0w==
X-Google-Smtp-Source: APXvYqyyfL36sLDzC3fGZJuckRuKrOR5/eaCW6vfPOwmumzPutA8k5DseFsUoso4bYVBykjNSQSZmm46G3WbB60v7fA=
X-Received: by 2002:a05:6602:2006:: with SMTP id
 y6mr28202284iod.218.1559837988226; 
 Thu, 06 Jun 2019 09:19:48 -0700 (PDT)
MIME-Version: 1.0
References: <a1ff446dfc06e2443552e7ec2d754099aacce7df.1559541944.git.ryder.lee@mediatek.com>
 <ade7ef01-8b06-ec7d-4caf-e581f4033819@newmedia-net.de>
In-Reply-To: <ade7ef01-8b06-ec7d-4caf-e581f4033819@newmedia-net.de>
From: Lorenzo Bianconi <lorenzo.bianconi@redhat.com>
Date: Thu, 6 Jun 2019 18:19:37 +0200
Message-ID: <CAJ0CqmVBogQrqf4Gckr5gQ6tCrdZG=p60ZiC+-WW-yxt93+40Q@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] mt76: mt7615: enable support for mesh
To: Sebastian Gottschall <s.gottschall@newmedia-net.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_091951_247161_A5F73EEE 
X-CRM114-Status: GOOD (  18.13  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
 linux-wireless <linux-wireless@vger.kernel.org>, YF Luo <yf.luo@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Sean Wang <sean.wang@mediatek.com>, Roy Luo <royluo@google.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

>
> i tested your patch against a qca 9984 chipset using SAE and without
> encryption. both did not work. the devices are connecting, but no data
> connection is possible

Hi Sebastian,

I tested Ryder's patch using mt76x2 as mesh peer and it works fine for me.
Could you please provide some more info?

Regards,
Lorenzo

>
>
> Sebastian
>
> Am 03.06.2019 um 08:08 schrieb Ryder Lee:
> > Enable NL80211_IFTYPE_MESH_POINT and update its path.
> >
> > Signed-off-by: Ryder Lee <ryder.lee@mediatek.com>
> > ---
> > Changes since v3 - fix a wrong expression
> > Changes since v2 - remove unused definitions
> > ---
> >   drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
> >   drivers/net/wireless/mediatek/mt76/mt7615/main.c | 1 +
> >   drivers/net/wireless/mediatek/mt76/mt7615/mcu.c  | 4 +++-
> >   drivers/net/wireless/mediatek/mt76/mt7615/mcu.h  | 6 ------
> >   4 files changed, 10 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > index 59f604f3161f..f860af6a42da 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> > @@ -133,6 +133,9 @@ static const struct ieee80211_iface_limit if_limits[] = {
> >       {
> >               .max = MT7615_MAX_INTERFACES,
> >               .types = BIT(NL80211_IFTYPE_AP) |
> > +#ifdef CONFIG_MAC80211_MESH
> > +                      BIT(NL80211_IFTYPE_MESH_POINT) |
> > +#endif
> >                        BIT(NL80211_IFTYPE_STATION)
> >       }
> >   };
> > @@ -195,6 +198,9 @@ int mt7615_register_device(struct mt7615_dev *dev)
> >       dev->mt76.antenna_mask = 0xf;
> >
> >       wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION) |
> > +#ifdef CONFIG_MAC80211_MESH
> > +                              BIT(NL80211_IFTYPE_MESH_POINT) |
> > +#endif
> >                                BIT(NL80211_IFTYPE_AP);
> >
> >       ret = mt76_register_device(&dev->mt76, true, mt7615_rates,
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/main.c b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > index b0bb7cc12385..585e67fa2728 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/main.c
> > @@ -37,6 +37,7 @@ static int get_omac_idx(enum nl80211_iftype type, u32 mask)
> >
> >       switch (type) {
> >       case NL80211_IFTYPE_AP:
> > +     case NL80211_IFTYPE_MESH_POINT:
> >               /* ap use hw bssid 0 and ext bssid */
> >               if (~mask & BIT(HW_BSSID_0))
> >                       return HW_BSSID_0;
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > index 43f70195244c..e82297048449 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.c
> > @@ -754,6 +754,7 @@ int mt7615_mcu_set_bss_info(struct mt7615_dev *dev,
> >
> >       switch (vif->type) {
> >       case NL80211_IFTYPE_AP:
> > +     case NL80211_IFTYPE_MESH_POINT:
> >               tx_wlan_idx = mvif->sta.wcid.idx;
> >               conn_type = CONNECTION_INFRA_AP;
> >               break;
> > @@ -968,7 +969,7 @@ int mt7615_mcu_add_wtbl(struct mt7615_dev *dev, struct ieee80211_vif *vif,
> >               .rx_wtbl = {
> >                       .tag = cpu_to_le16(WTBL_RX),
> >                       .len = cpu_to_le16(sizeof(struct wtbl_rx)),
> > -                     .rca1 = vif->type != NL80211_IFTYPE_AP,
> > +                     .rca1 = vif->type == NL80211_IFTYPE_STATION,
> >                       .rca2 = 1,
> >                       .rv = 1,
> >               },
> > @@ -1042,6 +1043,7 @@ static void sta_rec_convert_vif_type(enum nl80211_iftype type, u32 *conn_type)
> >   {
> >       switch (type) {
> >       case NL80211_IFTYPE_AP:
> > +     case NL80211_IFTYPE_MESH_POINT:
> >               if (conn_type)
> >                       *conn_type = CONNECTION_INFRA_STA;
> >               break;
> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
> > index e96efb13fa4d..0915cb735699 100644
> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/mcu.h
> > @@ -105,25 +105,19 @@ enum {
> >   #define STA_TYPE_STA                BIT(0)
> >   #define STA_TYPE_AP         BIT(1)
> >   #define STA_TYPE_ADHOC              BIT(2)
> > -#define STA_TYPE_TDLS                BIT(3)
> >   #define STA_TYPE_WDS                BIT(4)
> >   #define STA_TYPE_BC         BIT(5)
> >
> >   #define NETWORK_INFRA               BIT(16)
> >   #define NETWORK_P2P         BIT(17)
> >   #define NETWORK_IBSS                BIT(18)
> > -#define NETWORK_MESH         BIT(19)
> > -#define NETWORK_BOW          BIT(20)
> >   #define NETWORK_WDS         BIT(21)
> >
> >   #define CONNECTION_INFRA_STA        (STA_TYPE_STA | NETWORK_INFRA)
> >   #define CONNECTION_INFRA_AP (STA_TYPE_AP | NETWORK_INFRA)
> >   #define CONNECTION_P2P_GC   (STA_TYPE_STA | NETWORK_P2P)
> >   #define CONNECTION_P2P_GO   (STA_TYPE_AP | NETWORK_P2P)
> > -#define CONNECTION_MESH_STA  (STA_TYPE_STA | NETWORK_MESH)
> > -#define CONNECTION_MESH_AP   (STA_TYPE_AP | NETWORK_MESH)
> >   #define CONNECTION_IBSS_ADHOC       (STA_TYPE_ADHOC | NETWORK_IBSS)
> > -#define CONNECTION_TDLS              (STA_TYPE_STA | NETWORK_INFRA | STA_TYPE_TDLS)
> >   #define CONNECTION_WDS              (STA_TYPE_WDS | NETWORK_WDS)
> >   #define CONNECTION_INFRA_BC (STA_TYPE_BC | NETWORK_INFRA)
> >

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
