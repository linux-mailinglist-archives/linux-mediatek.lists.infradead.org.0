Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9A72C4A9B
	for <lists+linux-mediatek@lfdr.de>; Wed,  2 Oct 2019 11:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KVUBjRWANgS+SD9zKd+TTtNC3yQzsCGA4C11FZBmqck=; b=gQEPEnl+bCk5ma
	mdrL4IkWagKGq6C+GARJK9DkGTnypvxssn/2AXjN3w4uHiMdchUuBienLE6fIfXXK++AxwE1x5Sih
	ryma8ZtfO3vJap28I0gwy6u09T2FoAQa3g72BHXIr9hQqXqXGtghhBlCdVybIhAovvtjK+D0SAFa9
	PgWOAcSqxUqRaBRp/qwTAA4ocxTDp/wPF/9HEohbwZtJGP3mnw0nVTQH1GZvZ0mCqfzShfLGOlI5+
	Ol3uhBvTpAvMrPMgBtpDhkSuiAdZIUAB0VHMwXZj7WjiXIzrROdUFH++rSNTqyCP74ktJ5GngZ9pf
	/0OUFFtM0uzJOcmv0MSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFatC-0002ns-Kj; Wed, 02 Oct 2019 09:25:42 +0000
Received: from hillosipuli.retiisi.org.uk ([2a01:4f9:c010:4572::81:2])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFaq7-0001TQ-TT; Wed, 02 Oct 2019 09:22:35 +0000
Received: from valkosipuli.localdomain (valkosipuli.retiisi.org.uk
 [IPv6:2a01:4f9:c010:4572::80:2])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest
 SHA256) (No client certificate requested)
 by hillosipuli.retiisi.org.uk (Postfix) with ESMTPS id E2C52634C89;
 Wed,  2 Oct 2019 12:21:44 +0300 (EEST)
Received: from sailus by valkosipuli.localdomain with local (Exim 4.92)
 (envelope-from <sakari.ailus@retiisi.org.uk>)
 id 1iFapL-00028v-CM; Wed, 02 Oct 2019 12:21:43 +0300
Date: Wed, 2 Oct 2019 12:21:43 +0300
From: Sakari Ailus <sakari.ailus@iki.fi>
To: frederic.chen@mediatek.com
Subject: Re: [RFC PATCH V3 5/5] media: platform: mtk-mdp3: Add struct
 tuning_addr and img_sw_buffer
Message-ID: <20191002092143.GP896@valkosipuli.retiisi.org.uk>
References: <20190909192244.9367-1-frederic.chen@mediatek.com>
 <20190909192244.9367-6-frederic.chen@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190909192244.9367-6-frederic.chen@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_022232_128432_DF603521 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: laurent.pinchart+renesas@ideasonboard.com, Rynn.Wu@mediatek.com,
 Allan.Yang@mediatek.com, suleiman@chromium.org, Jerry-ch.Chen@mediatek.com,
 jungo.lin@mediatek.com, hans.verkuil@cisco.com, linux-media@vger.kernel.org,
 devicetree@vger.kernel.org, holmes.chiou@mediatek.com, shik@chromium.org,
 yuzhao@chromium.org, linux-mediatek@lists.infradead.org,
 matthias.bgg@gmail.com, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, Sean.Cheng@mediatek.com,
 srv_heupstream@mediatek.com, sj.huang@mediatek.com, tfiga@chromium.org,
 christie.yu@mediatek.com, zwisler@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On Tue, Sep 10, 2019 at 03:22:44AM +0800, frederic.chen@mediatek.com wrote:
> From: Frederic Chen <frederic.chen@mediatek.com>
> 
> We added a struct tuning_addr which contains a field "present"
> so that the driver can tell the firmware if we have user tuning
> dataor not.
> 
> The strcut img_sw_buffer is also added. This struct has no cpu address
> field and uses a handle instead so that we don't pass a cpu address
> to co-processor.
> 
> Signed-off-by: Frederic Chen <frederic.chen@mediatek.com>

If the driver depends on this patch, it needs to come before the driver.

-- 
Sakari Ailus

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
