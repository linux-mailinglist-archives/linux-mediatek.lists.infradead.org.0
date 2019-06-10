Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 032913AE4F
	for <lists+linux-mediatek@lfdr.de>; Mon, 10 Jun 2019 06:48:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ETSt+n+5ikL8VROp9ECjvrPC1ITAvPRBlpnguc60NLU=; b=jYLz+n/K+8iz+nH7mmhJwDd9g
	uLns9VTObyoMHH4bI4RImU1JN7+vUFmT+AY1BFhhbbmt/E1lyJWePncu5z8QdLHswaeVkpCjEXtpZ
	AMw8VM9l1QmCDrWxzR7tgalbO+YkCxV/XcN72dS9xHJU5G9f6BXwA+LQvY5HzLF+yiD96SfZQXAVk
	ZQLnudZgWKM/7UHQsNpdKJlsBkH1/Q5B3osiHn2X8jXhcoH3/+Y5y3KDmT+bFJXcYv8J1dhbEAHDL
	4ZUziQs7nlfzNPS5Kls0ZehbuTrBt3n4ckXs0/O7R6kVvljUkqRMoah4FMULm8grSOjyf8VlrkYhS
	gfEX4JcaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haCDt-0005av-Ee; Mon, 10 Jun 2019 04:47:57 +0000
Received: from smtps.newmedia-net.de ([2a05:a1c0:0:de::167]
 helo=webmail.newmedia-net.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haCDp-0005aQ-3F
 for linux-mediatek@lists.infradead.org; Mon, 10 Jun 2019 04:47:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=newmedia-net.de; s=mikd; 
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject;
 bh=a+MCzpnl0xNsgcO1BNyJajn0uqIgCFJ5QcmD+iHYyro=; 
 b=YCubijx9eK9f9Ko/oDWdt6Qvg8YIMbn/pgO70gbQmWCHyDHKSpx/6569+7vP2TD88ivMyCH4aN07klszoX4w00nLLAum/DuJNRlpCVpI0S8J2tAw4hRR0Qlit9G+ESV1NRRVgfL+RFihIR3CMpKJwk0imNKo7fRLXunKZoP71qk=;
Subject: Re: [PATCH] mt76: mt7615: add support for per-chain signal strength
 reporting
To: Ryder Lee <ryder.lee@mediatek.com>
References: <3912a2863e858f3623ced61737836e42c7b19149.1560071167.git.ryder.lee@mediatek.com>
 <d6cfd2e9-4b2b-36ac-6cae-a34f74204801@newmedia-net.de>
 <1560132590.28258.5.camel@mtkswgap22> <1560140541.5606.12.camel@mtkswgap22>
From: Sebastian Gottschall <s.gottschall@newmedia-net.de>
Message-ID: <64662021-8e5a-91b5-9afb-3c9005564d19@newmedia-net.de>
Date: Mon, 10 Jun 2019 06:47:39 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <1560140541.5606.12.camel@mtkswgap22>
X-Received: from [2003:c9:3f05:3a00:f095:7be4:6d09:fd49]
 by webmail.newmedia-net.de with esmtpsa (TLSv1:AES128-SHA:128)
 (Exim 4.72) (envelope-from <s.gottschall@newmedia-net.de>)
 id 1haCDp-0003SA-AI; Mon, 10 Jun 2019 06:47:53 +0200
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190609_214753_429347_784456F3 
X-CRM114-Status: GOOD (  10.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sean Wang <sean.wang@mediatek.com>,
 Chih-Min Chen <chih-min.Chen@mediatek.com>, YF Luo <yf.luo@mediatek.com>,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 Yiwei Chung <yiwei.chung@mediatek.com>, linux-mediatek@lists.infradead.org,
 Roy Luo <royluo@google.com>, Lorenzo Bianconi <lorenzo.bianconi@redhat.com>,
 Felix Fietkau <nbd@nbd.name>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

okay. curious is, that my variant works with sane results too.
i will test your variant and check the results

Sebastian

Am 10.06.2019 um 06:22 schrieb Ryder Lee:
> On Mon, 2019-06-10 at 10:09 +0800, Ryder Lee wrote:
>> On Sun, 2019-06-09 at 16:44 +0200, Sebastian Gottschall wrote:
>>> according to my findings
>>>
>>> MT_RXV4_RCPI1 is part of rx descriptor 4 and not 3
>>> so it must be rxdg4 = rxd[4] etc.
>> RXV start from 1 in the code.
>>
>> That is: RXV1 <-> rxdg0, RXV2 <-> rxdg1 ...so RXV4 <-> rxdg3
>>
>>> however rxdg3 contains MT_RXV3_IB_RSSIRX which can be used for signal calculation.
>>> i already wrote a similar code for this driver which i sended to felix a long time ago.
>>> my variant looks like
>>>                   status->signal = (FIELD_GET(MT_RXV3_IB_RSSIRX, rxdg3) - 220) / 2;
>>>                   status->chain_signal[0] = (FIELD_GET(MT_RXV4_RCPI0, rxdg4) - 220) / 2;
>>>                   status->chain_signal[1] = (FIELD_GET(MT_RXV4_RCPI1, rxdg4) - 220) / 2;
>>>                   status->chain_signal[2] = (FIELD_GET(MT_RXV4_RCPI2, rxdg4) - 220) / 2;
>>>                   status->chain_signal[3] = (FIELD_GET(MT_RXV4_RCPI3, rxdg4) - 220) / 2;
> mt7615 actually doesn't use in-band RSSI for signal calculation, but it
> occurs to me that i should modify the code to compare per-chain's
> signal. Something like this:
>
> 		status->chain_signal[0] = to_rssi(MT_RXV4_RCPI0, rxdg3);
> 		status->chain_signal[1] = to_rssi(MT_RXV4_RCPI1, rxdg3);
> 		status->chain_signal[2] = to_rssi(MT_RXV4_RCPI2, rxdg3);
> 		status->chain_signal[3] = to_rssi(MT_RXV4_RCPI3, rxdg3);
> 		status->signal = status->chain_signal[0];
>
> 		switch (status->chains) {
> 		case 0xf:
> 			status->signal = max(status->signal,
> 					     status->chain_signal[3]);
> 		case 0x7:
> 			status->signal = max(status->signal,
> 					     status->chain_signal[2]);
> 		case 0x3:
> 			status->signal = max(status->signal,
> 					     status->chain_signal[1]);
> 			break;
> 		default:
> 			break;
> 		}
>
>
> I could send a v2 or you can take care of that.
>
> Ryder
>
>

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
