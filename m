Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12DBB5B877
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 11:57:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mmd2wpOYh2nyONuHLpcSbyoqT4ORmEpbMbLXMtpb+Q4=; b=DsWXNQnCOzE4Qp
	Loh3txgdZRUVW6B3TgqOBtPZF6iL/JW0tg4IYiIIanglMOcN3+ZUdMHS4kfIBN0oOfsGBmFohmkgb
	YPRMpJio/BZh+nICAJ5Ug8bJ/2xNSZsAkndofoQ/W2dxMC1Ye8km30lSxnOSeGVKBE8yb0qz/LQDa
	Gfr1PEHgsqih1MqVrqXKUF5vBzUjXxf2lp/XPOSjv6xSQphCgO5mOP+FsQfaIFFIhOwRdYi4Z1oke
	bMdE+v5ay0yn6Py8s94jvMba1mPfClhgMrI3rUeWkz3RlvFF5I7evV0fJ7ujKh/4VOydoxpcG9p79
	3tv+O8LLwjs9R2Y8/3lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hht42-0002Hz-Ao; Mon, 01 Jul 2019 09:57:34 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hht3q-00027b-Ch
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 09:57:23 +0000
X-UUID: e9f8c028670245fe8421bad9a1bd6de8-20190701
X-UUID: e9f8c028670245fe8421bad9a1bd6de8-20190701
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <ryder.lee@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1063062291; Mon, 01 Jul 2019 01:57:04 -0800
Received: from mtkmbs08n2.mediatek.inc (172.21.101.56) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 02:57:03 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs08n2.mediatek.inc (172.21.101.56) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 1 Jul 2019 17:57:01 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 1 Jul 2019 17:57:01 +0800
Message-ID: <1561975021.3950.9.camel@mtkswgap22>
Subject: Re: [PATCH 4/6] mt76: mt7615: unlock dfs bands
From: Ryder Lee <ryder.lee@mediatek.com>
To: Kalle Valo <kvalo@codeaurora.org>
Date: Mon, 1 Jul 2019 17:57:01 +0800
In-Reply-To: <87tvc69odh.fsf@kamboji.qca.qualcomm.com>
References: <cover.1561804422.git.lorenzo@kernel.org>
 <33184e0b78983fe7c79fa70c5fbb21042aafa4f5.1561804422.git.lorenzo@kernel.org>
 <87muhzs9qv.fsf@purkki.adurom.net>
 <CAJ0CqmU6TLhFa4ZJxWHBzvpx+5g5E4-WkSPECx47F9d3T=5YjQ@mail.gmail.com>
 <87tvc69odh.fsf@kamboji.qca.qualcomm.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: B8E13F6ECB07971D9ECC9794EB8A4BCC29604420E225EDAC327276D592B976E52000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_025722_452173_BF3A9038 
X-CRM114-Status: GOOD (  19.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
X-BeenThere: linux-mediatek@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-mediatek.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-mediatek/>
List-Post: <mailto:linux-mediatek@lists.infradead.org>
List-Help: <mailto:linux-mediatek-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-mediatek>, 
 <mailto:linux-mediatek-request@lists.infradead.org?subject=subscribe>
Cc: YF Luo <yf.luo@mediatek.com>,
 linux-wireless <linux-wireless@vger.kernel.org>,
 linux-mediatek@lists.infradead.org, Roy Luo <royluo@google.com>,
 Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Lorenzo Bianconi <lorenzo@kernel.org>, Felix Fietkau <nbd@nbd.name>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Mon, 2019-07-01 at 10:59 +0300, Kalle Valo wrote:
> Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:
> 
> >>
> >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
> >>
> >> > Unlock dfs channels since now mt7615 driver supports radar detection
> >> >
> >> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> >> > ---
> >> >  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
> >> >  1 file changed, 6 insertions(+)
> >> >
> >> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> >> > index 5dc4cced5789..6d336d82cafe 100644
> >> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> >> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
> >> > @@ -152,6 +152,12 @@ static const struct ieee80211_iface_combination if_comb[] = {
> >> >               .max_interfaces = 4,
> >> >               .num_different_channels = 1,
> >> >               .beacon_int_infra_match = true,
> >> > +             .radar_detect_widths = BIT(NL80211_CHAN_WIDTH_20_NOHT) |
> >> > +                                    BIT(NL80211_CHAN_WIDTH_20) |
> >> > +                                    BIT(NL80211_CHAN_WIDTH_40) |
> >> > +                                    BIT(NL80211_CHAN_WIDTH_80) |
> >> > +                                    BIT(NL80211_CHAN_WIDTH_160) |
> >> > +                                    BIT(NL80211_CHAN_WIDTH_80P80),
> >>
> >> Isn't it questionable to enable these without any testing on real
> >> hardware? Getting DFS to work correctly is hard so I'm very suspicious
> >> about this.
> >>
> >> --
> >> Kalle Valo
> >
> > Hi Kalle,
> >
> > unfortunately at the moment I am not able to run any tests with a real
> > signal generator so I just ported the code from vendor sdk.
> > I am pretty confident it works since the radar pattern detection is
> > done in fw/hw so I guess it has been already tested in the vendor sdk
> 
> DFS is really tricky to get it working right, so I'm not easily
> convinced :)
> 
> > but we can postpone this patch and apply just the rest of the series
> > until we have some test results.
> 
> Yeah, I think it would be best to drop this patch so that DFS is not
> enabled by default and apply this patch only after positive test
> results.
> 

That's why I suggested Lorenzo to add this one - "[6/6] mt76: mt7615:
add radar pattern test knob to debugfs"

We can feed radar pattern through debugfs to test if a pattern is
detected as radar pattern or not and verify the fw radar detection
algorithm.

In this format:
RadarPulsePattern="3680128-2-245;3683878-2-245;3687628-2-245;3691378-2-245;3695128-2-245;3698878-2-245;3702628-2-245;3706378-2-245;3710128-2-245;3713878-2-245"

As for testing it on 'real hardware' I need to take some other time to
borrow equipment.

Ryder


_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
