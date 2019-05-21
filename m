Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 13BFF25157
	for <lists+linux-mediatek@lfdr.de>; Tue, 21 May 2019 16:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qc12+EkvE/d1bR6qdc90Ld7rncCwrIuI6baYtoRN5o=; b=Xmj6ZLZJYxiBmg
	tPZ8OyyFTHbH83ZfmJv7FMUcDdNt37ESdRvHT5GF4J4kt3F3g2TJl0aSrieai5BNmcw8i4Tp66jes
	OlClgghpwZPw8OVKlpVEfHwKCc9R4wZ/k9rIB3qnZrrekXd2JWGfPxLumGLJY25aj/TYBv+y0lBhS
	Wqytjfc669dWP5P5/kQ6BiwwscTXuJV3HOcaibVFbSPXm53csCCiMD5+THnyE3d+Sr0ceHppbwofl
	S5OgfK4Qt/QPyNT91VQ9bO8ai7z9OjbyurpEhk7Q2TSSHQ7F7kPv9sL2OPKzRKhdj6OiPROLJ8dQ7
	hOhQpZ5GBLR2hur3fOKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hT5K6-0002Xf-W8; Tue, 21 May 2019 14:00:59 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hT5Jz-0002RF-98; Tue, 21 May 2019 14:00:52 +0000
Received: from localhost (unknown [106.51.105.51])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0791921479;
 Tue, 21 May 2019 14:00:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558447251;
 bh=B2pMNgUdKmU1cAmS6aYmbKhfcBaE02tqFqEBfSUGy3Q=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HAUzjmDTqsg1XPKB4jRXTJPq8vu9dHTzhkPag3QFY60QQq1ZTM1a2O2q54Gv4VHiA
 kI7E3I3rrv3A1XP+CL4/VU1R1kKiHR2vt0XwnE//KEgiCXkpmZn5NvYp1WIapOd0+i
 ARPZ9RgQKveXyCZ4x4m05+nSs/iWf+CT1TOG4Ops=
Date: Tue, 21 May 2019 19:30:45 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Long Cheng <long.cheng@mediatek.com>
Subject: Re: [PATCH 1/4] dmaengine: mediatek: Add MediaTek UART APDMA support
Message-ID: <20190521140045.GO15118@vkoul-mobl>
References: <1556336193-15198-1-git-send-email-long.cheng@mediatek.com>
 <1556336193-15198-2-git-send-email-long.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1556336193-15198-2-git-send-email-long.cheng@mediatek.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190521_070051_339375_2FFD8DD7 
X-CRM114-Status: UNSURE (   8.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>,
 Zhenbao Liu <zhenbao.liu@mediatek.com>, linux-serial@vger.kernel.org,
 srv_heupstream@mediatek.com, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Randy Dunlap <rdunlap@infradead.org>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Sean Wang <sean.wang@kernel.org>,
 dmaengine@vger.kernel.org, Ryder Lee <ryder.lee@mediatek.com>,
 linux-mediatek@lists.infradead.org, Sean Wang <sean.wang@mediatek.com>,
 Jiri Slaby <jslaby@suse.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 Yingjoe Chen <yingjoe.chen@mediatek.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

On 27-04-19, 11:36, Long Cheng wrote:
> Add 8250 UART APDMA to support MediaTek UART. If MediaTek UART is
> enabled by SERIAL_8250_MT6577, and we can enable this driver to offload
> the UART device moving bytes.

Applied, thanks

-- 
~Vinod

_______________________________________________
Linux-mediatek mailing list
Linux-mediatek@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-mediatek
