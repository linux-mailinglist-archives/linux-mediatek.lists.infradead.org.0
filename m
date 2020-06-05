Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31E81EF1F1
	for <lists+linux-mediatek@lfdr.de>; Fri,  5 Jun 2020 09:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8SgUxPwpWRUcXu4y1857yCXONb3ydU7DJBCzfQssRcs=; b=CqtBmhshnkqfo2
	pV9uEimtFeoiHpNhdTxe3rnGfpCtnEHkKlzgxgBKCsKQ9ht9q2VIf3eoelplxGUZZ3XJN6dyw7GoI
	FbaNacO4CPqg52Ftz5jqPoUGJol3U5hRYvCgY4pPd9iHwwPqxBlpJZaswTbShveiFvkmnDUpJmOkp
	K1TGLIkNOJ29SE+XgAq1RkbFl8iTSEtV63fO4oEm4L0+mFErG8+aHBMKB7zdkSj1s0r1gUisGfDwn
	YE9GNbCxEq0mVWEWC6Gg3lImr1C8WAhW0FyzIXQ9rSGtqTfJ77XQBa3S7ElCxR5Q76sbGn6o6Ifre
	OWlSNQPlOwF/3IU2f9MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh6fQ-0001Km-Ri; Fri, 05 Jun 2020 07:21:28 +0000
Received: from s3.sipsolutions.net ([2a01:4f8:191:4433::2]
 helo=sipsolutions.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh6fN-0001KD-UI
 for linux-mediatek@lists.infradead.org; Fri, 05 Jun 2020 07:21:27 +0000
Received: by sipsolutions.net with esmtpsa
 (TLS1.3:ECDHE_SECP256R1__RSA_PSS_RSAE_SHA256__AES_256_GCM:256)
 (Exim 4.93) (envelope-from <johannes@sipsolutions.net>)
 id 1jh6f9-009wbC-Bz; Fri, 05 Jun 2020 09:21:11 +0200
Message-ID: <ec6ea6eea17d7e8a6abaf35e78ffac7568e54831.camel@sipsolutions.net>
Subject: Re: [PATCH] mt76: mt7663: introduce ARP filter offload
From: Johannes Berg <johannes@sipsolutions.net>
To: Lorenzo Bianconi <lorenzo@kernel.org>, nbd@nbd.name
Date: Fri, 05 Jun 2020 09:21:09 +0200
In-Reply-To: <e91990d20a1a5f8d134fc9d9df152d9356fd15f9.1591340650.git.lorenzo@kernel.org>
 (sfid-20200605_090717_383122_E28D553B)
References: <e91990d20a1a5f8d134fc9d9df152d9356fd15f9.1591340650.git.lorenzo@kernel.org>
 (sfid-20200605_090717_383122_E28D553B)
User-Agent: Evolution 3.36.2 (3.36.2-1.fc32) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200605_002125_979613_82E30E8B 
X-CRM114-Status: UNSURE (   6.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 KHOP_HELO_FCRDNS       Relay HELO differs from its IP's reverse DNS
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
Cc: linux-mediatek@lists.infradead.org, lorenzo.bianconi@redhat.com,
 ryder.lee@mediatek.com, linux-wireless@vger.kernel.org, sean.wang@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Fri, 2020-06-05 at 09:07 +0200, Lorenzo Bianconi wrote:
> 
> +		.arp = {
> +			.tag = cpu_to_le16(UNI_OFFLOAD_OFFLOAD_ARP),
> +			.len = cpu_to_le16(sizeof(struct mt7615_arpns_tlv)),
> +			.ips_num = info->arp_addr_cnt,


Surely there's *some* hardware limit, after which you need to disable
the filter? Or does the firmware take the data and discard it, it it's
got too many IPs?

At the very least, only 255 fit in there, and at least theoretically you
can assign more to the netdev :)

johannes



_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
