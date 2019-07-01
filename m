Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8528C5B974
	for <lists+linux-mediatek@lfdr.de>; Mon,  1 Jul 2019 12:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:In-Reply-To:
	Date:References:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3l25BPOQdsiTBy5Qqf0Ugc8aZofUYDJhTkF3HA+ylw0=; b=YS2ECBP/XUG1nu
	mrucY+im/esGZZLMF4MiXmAnQ7KNdthubtUlI07GCvTYgk+odkQJbjZflXbESmJlv6YYhrEG8pNAg
	mSC0DAauPJdcswINd0D7wljpNW2mh5aE0W65JUPs9mrQPp9KdHB38h9ynHYb7URqWlU70cLAHzwMU
	uQxUXQlIyRkaFjV3OHEYtgX0Fu21UxV1m9BtZkucwAC+H5AXYgqOifQodMXpITlEMQwARmHIcJPGo
	NYn6cBsutlOAE/K7zXE+gtISoNKA4QJZb6Ku1lcL/eyip1gAK/evpuyFYMvUGVwl9pP9JaeYmKpOv
	0stzpoQiRmN5mFzGb6yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhtuS-0003OL-13; Mon, 01 Jul 2019 10:51:44 +0000
Received: from smtp.codeaurora.org ([198.145.29.96])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhtsp-0000dC-5E
 for linux-mediatek@lists.infradead.org; Mon, 01 Jul 2019 10:50:05 +0000
Received: by smtp.codeaurora.org (Postfix, from userid 1000)
 id 798E461155; Mon,  1 Jul 2019 10:49:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561978200;
 bh=aQJl/9MUObNguNsjIkQXsv9cLEnSfYWzIb12gAP3T5M=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=PvFRz6Bm5VsEM+6j60cJ3QQ2Hzq+VKvP7lVO/mVUsY+BszxkglkWWsZgmYEjuXPC7
 /upyz4ZhM1UCz6B5bAz2llxP5oRU+K1kkFihbfdDWrEBN6MtDkkGyunaCBEQB/8QRC
 nV91ZyhsaZm/SyzNFJ3Vy4PcDAv+R90NsiEwejSk=
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
 pdx-caf-mail.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=2.0 tests=ALL_TRUSTED,BAYES_00,
 DKIM_INVALID,DKIM_SIGNED,SPF_NONE autolearn=no autolearn_force=no
 version=3.4.0
Received: from potku.adurom.net (88-114-240-156.elisa-laajakaista.fi
 [88.114.240.156])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 (Authenticated sender: kvalo@smtp.codeaurora.org)
 by smtp.codeaurora.org (Postfix) with ESMTPSA id 7EB7F615E8;
 Mon,  1 Jul 2019 10:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=codeaurora.org;
 s=default; t=1561978197;
 bh=aQJl/9MUObNguNsjIkQXsv9cLEnSfYWzIb12gAP3T5M=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=dWhrbNuFqZ+SwoFXL/jDlLXtEGYvtICwZ62254IsuMpbgvlkHpEimyCJffE4QQFGP
 UvEPgp1Vfn3qVajcSo6UvaBPPiq1t7VeJtuN+csvmacPAXJsbyKZjY2Lzn/k7AklIY
 K470syMV5Uo8zNWx4UpmeuEWolNdT2fso0nQHp6k=
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 7EB7F615E8
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 dmarc=none (p=none dis=none) header.from=codeaurora.org
Authentication-Results: pdx-caf-mail.web.codeaurora.org;
 spf=none smtp.mailfrom=kvalo@codeaurora.org
From: Kalle Valo <kvalo@codeaurora.org>
To: Ryder Lee <ryder.lee@mediatek.com>
Subject: Re: [PATCH 4/6] mt76: mt7615: unlock dfs bands
References: <cover.1561804422.git.lorenzo@kernel.org>
 <33184e0b78983fe7c79fa70c5fbb21042aafa4f5.1561804422.git.lorenzo@kernel.org>
 <87muhzs9qv.fsf@purkki.adurom.net>
 <CAJ0CqmU6TLhFa4ZJxWHBzvpx+5g5E4-WkSPECx47F9d3T=5YjQ@mail.gmail.com>
 <87tvc69odh.fsf@kamboji.qca.qualcomm.com>
 <1561975021.3950.9.camel@mtkswgap22>
Date: Mon, 01 Jul 2019 13:49:52 +0300
In-Reply-To: <1561975021.3950.9.camel@mtkswgap22> (Ryder Lee's message of
 "Mon, 1 Jul 2019 17:57:01 +0800")
Message-ID: <87pnmu9ghb.fsf@kamboji.qca.qualcomm.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.5 (gnu/linux)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_035003_312523_DBA7CC65 
X-CRM114-Status: GOOD (  20.07  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.145.29.96 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Ryder Lee <ryder.lee@mediatek.com> writes:

> On Mon, 2019-07-01 at 10:59 +0300, Kalle Valo wrote:
>> Lorenzo Bianconi <lorenzo.bianconi@redhat.com> writes:
>> 
>> >>
>> >> Lorenzo Bianconi <lorenzo@kernel.org> writes:
>> >>
>> >> > Unlock dfs channels since now mt7615 driver supports radar detection
>> >> >
>> >> > Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
>> >> > ---
>> >> >  drivers/net/wireless/mediatek/mt76/mt7615/init.c | 6 ++++++
>> >> >  1 file changed, 6 insertions(+)
>> >> >
>> >> > diff --git a/drivers/net/wireless/mediatek/mt76/mt7615/init.c b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
>> >> > index 5dc4cced5789..6d336d82cafe 100644
>> >> > --- a/drivers/net/wireless/mediatek/mt76/mt7615/init.c
>> >> > +++ b/drivers/net/wireless/mediatek/mt76/mt7615/init.c
>> >> > @@ -152,6 +152,12 @@ static const struct ieee80211_iface_combination if_comb[] = {
>> >> >               .max_interfaces = 4,
>> >> >               .num_different_channels = 1,
>> >> >               .beacon_int_infra_match = true,
>> >> > +             .radar_detect_widths = BIT(NL80211_CHAN_WIDTH_20_NOHT) |
>> >> > +                                    BIT(NL80211_CHAN_WIDTH_20) |
>> >> > +                                    BIT(NL80211_CHAN_WIDTH_40) |
>> >> > +                                    BIT(NL80211_CHAN_WIDTH_80) |
>> >> > +                                    BIT(NL80211_CHAN_WIDTH_160) |
>> >> > +                                    BIT(NL80211_CHAN_WIDTH_80P80),
>> >>
>> >> Isn't it questionable to enable these without any testing on real
>> >> hardware? Getting DFS to work correctly is hard so I'm very suspicious
>> >> about this.
>> >>
>> >> --
>> >> Kalle Valo
>> >
>> > Hi Kalle,
>> >
>> > unfortunately at the moment I am not able to run any tests with a real
>> > signal generator so I just ported the code from vendor sdk.
>> > I am pretty confident it works since the radar pattern detection is
>> > done in fw/hw so I guess it has been already tested in the vendor sdk
>> 
>> DFS is really tricky to get it working right, so I'm not easily
>> convinced :)
>> 
>> > but we can postpone this patch and apply just the rest of the series
>> > until we have some test results.
>> 
>> Yeah, I think it would be best to drop this patch so that DFS is not
>> enabled by default and apply this patch only after positive test
>> results.
>> 
>
> That's why I suggested Lorenzo to add this one - "[6/6] mt76: mt7615:
> add radar pattern test knob to debugfs"
>
> We can feed radar pattern through debugfs to test if a pattern is
> detected as radar pattern or not and verify the fw radar detection
> algorithm.

Sure, that's nice for testing but does not guarantee that it works with
real hardware as well. I take regulatory rules very seriously and that's
why I'm extra careful here.

-- 
Kalle Valo

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
