Return-Path: <linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-mediatek@lfdr.de
Delivered-To: lists+linux-mediatek@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 283BB14F21
	for <lists+linux-mediatek@lfdr.de>; Mon,  6 May 2019 17:09:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sXrEkMys+lVtO0QUnf0ELro/gGMpXUr8BASC+jDaQo0=; b=ew5pFyx/QBJgvJ
	7BoNwp/BAYFDvHGbIwYtZl9YqUsYT4yH1xXkNcJ0/fSJybiOvw5CEeSCensO5j/2tLbgSHJq8elSq
	G1h2Xo7k/P1oBKpaZfC3K9zDm9e1HhCr2kpt+dOWE2F8Y+6viiPi5kSAXjS6MMjgxNtkf0LjP1ZYa
	AzLuwBIcQTiZPUlyeZLFdPu/pWhFxImJ9qFljWwpMmyzG3cXgId2qqbGrEhOiambyhBg49BlW8gu4
	LGWlPpGs8be8YmBiM41vmWuY49cZT/HWnBlOOYrjrgl5CuUW4TRkoP/VmfUVBEvFXRyC1zzXqAvlU
	G3kulCSba6X2WoVuG/sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNfEn-0008GD-BG; Mon, 06 May 2019 15:09:05 +0000
Received: from userp2120.oracle.com ([156.151.31.85])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNfEk-0008FH-1H
 for linux-mediatek@lists.infradead.org; Mon, 06 May 2019 15:09:03 +0000
Received: from pps.filterd (userp2120.oracle.com [127.0.0.1])
 by userp2120.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46F3o4l106193;
 Mon, 6 May 2019 15:08:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=oracle.com;
 h=date : from : to : cc
 : subject : message-id : references : mime-version : content-type :
 content-transfer-encoding : in-reply-to; s=corp-2018-07-02;
 bh=rDJ/z/pPRZKtR5JzVGMLLDer4402GB87zt7n/gU4krU=;
 b=qEzSeP3aGTDv3s9znu1nX/m58g0qTnZdtpwUK1CQGRD3KDy2qgkIaoxVFwc/d6ws7egj
 wKcF47zucTRQ/UMQoV42jXTQnbrbo1me39YFnJGDlEghnI+xb8AKzpb70cRdkMZYEd2i
 len4M5CrDAbyEt9xWopCKmPOhQ1DHZBZz2BVpO0aHb8kNHooK6KP9UxzWxV3heh1s/+S
 IHEkd4K6qpvVJkObdyJWwYVF8oJH/PC9ukV87kuCFZ0lYFIYkXaJDTX3G+9dvHxZvWPI
 nWzAzWFZ7lixcllZPY2dSxcuLuG3RnRzQi3Z0oyn9pQKiKyurW1w7pvqKKcLmRZUpPQq YQ== 
Received: from aserp3030.oracle.com (aserp3030.oracle.com [141.146.126.71])
 by userp2120.oracle.com with ESMTP id 2s94b0f811-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:08:02 +0000
Received: from pps.filterd (aserp3030.oracle.com [127.0.0.1])
 by aserp3030.oracle.com (8.16.0.27/8.16.0.27) with SMTP id x46F6wpr045484;
 Mon, 6 May 2019 15:08:01 GMT
Received: from aserv0122.oracle.com (aserv0122.oracle.com [141.146.126.236])
 by aserp3030.oracle.com with ESMTP id 2s94b8y1bu-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
 Mon, 06 May 2019 15:08:01 +0000
Received: from abhmp0007.oracle.com (abhmp0007.oracle.com [141.146.116.13])
 by aserv0122.oracle.com (8.14.4/8.14.4) with ESMTP id x46F7gJH005600;
 Mon, 6 May 2019 15:07:42 GMT
Received: from kadam (/196.110.137.40) by default (Oracle Beehive Gateway v4.0)
 with ESMTP ; Mon, 06 May 2019 08:07:42 -0700
Date: Mon, 6 May 2019 18:07:13 +0300
From: Dan Carpenter <dan.carpenter@oracle.com>
To: Petr =?utf-8?Q?=C5=A0tetiar?= <ynezz@true.cz>
Subject: Re: [PATCH net-next 1/3] net: ethernet: support of_get_mac_address
 new ERR_PTR error
Message-ID: <20190506150713.GH2269@kadam>
References: <1557136717-531-1-git-send-email-ynezz@true.cz>
 <1557136717-531-2-git-send-email-ynezz@true.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557136717-531-2-git-send-email-ynezz@true.cz>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=814
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1905060130
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=9249
 signatures=668686
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1011
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=845 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1905060130
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_080902_207925_15F4436B 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [156.151.31.85 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Andrew Lunn <andrew@lunn.ch>, Thor Thayer <thor.thayer@linux.intel.com>,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Andreas Larsson <andreas@gaisler.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Pantelis Antoniou <pantelis.antoniou@gmail.com>,
 Byungho An <bh74.an@samsung.com>, Frank Rowand <frowand.list@gmail.com>,
 John Linn <John.Linn@xilinx.com>, Alexandre Torgue <alexandre.torgue@st.com>,
 Vipul Pandya <vipul.pandya@samsung.com>, linux-renesas-soc@vger.kernel.org,
 Felix Fietkau <nbd@openwrt.org>, Florian Fainelli <f.fainelli@gmail.com>,
 Madalin Bucur <madalin.bucur@nxp.com>, Michal Simek <michal.simek@xilinx.com>,
 linux-stm32@st-md-mailman.stormreply.com, Chen-Yu Tsai <wens@csie.org>,
 Jose Abreu <joabreu@synopsys.com>, bcm-kernel-feedback-list@broadcom.com,
 Sylvain Lemieux <slemieux.tyco@gmail.com>, Sunil Goutham <sgoutham@cavium.com>,
 Yisen Zhuang <yisen.zhuang@huawei.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 nios2-dev@lists.rocketboards.org, devel@driverdev.osuosl.org,
 Grygorii Strashko <grygorii.strashko@ti.com>, Robert Richter <rric@kernel.org>,
 Girish K S <ks.giri@samsung.com>, Nelson Chang <nelson.chang@mediatek.com>,
 Wingman Kwok <w-kwok2@ti.com>, Hauke Mehrtens <hauke@hauke-m.de>,
 Sean Wang <sean.wang@mediatek.com>, Vladimir Zapolskiy <vz@mleia.com>,
 Claudiu Manoil <claudiu.manoil@nxp.com>, Doug Berger <opendmb@gmail.com>,
 linux-mediatek@lists.infradead.org, Murali Karicheri <m-karicheri2@ti.com>,
 John Crispin <john@phrozen.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Giuseppe Cavallaro <peppe.cavallaro@st.com>, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Mirko Lindner <mlindner@marvell.com>,
 Salil Mehta <salil.mehta@huawei.com>, Fugang Duan <fugang.duan@nxp.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, Stephen Hemminger <stephen@networkplumber.org>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
 Anirudha Sarangi <anirudh@xilinx.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "Linux-mediatek" <linux-mediatek-bounces@lists.infradead.org>
Errors-To: linux-mediatek-bounces+lists+linux-mediatek=lfdr.de@lists.infradead.org

T24gTW9uLCBNYXkgMDYsIDIwMTkgYXQgMTE6NTg6MzVBTSArMDIwMCwgUGV0ciDFoHRldGlhciB3
cm90ZToKPiBUaGVyZSB3YXMgTlZNRU0gc3VwcG9ydCBhZGRlZCB0byBvZl9nZXRfbWFjX2FkZHJl
c3MsIHNvIGl0IGNvdWxkIG5vdyByZXR1cm4KPiBFUlJfUFRSIGVuY29kZWQgZXJyb3IgdmFsdWVz
LCBzbyB3ZSBuZWVkIHRvIGFkanVzdCBhbGwgY3VycmVudCB1c2VycyBvZgo+IG9mX2dldF9tYWNf
YWRkcmVzcyB0byB0aGlzIG5ldyBmYWN0LgoKV2UgbmVlZCBhIEZpeGVzIHRhZyBzbyB3ZSBjYW4g
bG9vayBhdCB0aGUgY29tbWl0IHdoaWNoIGFkZHMgTlZNRU0Kc3VwcG9ydC4KCkl0J3Mgbm90IGNs
ZWFyIHRvIG1lIHRoYXQgYW55b25lIGV2ZXIgYXBwbGllZCB0aGF0IHBhdGNoLiAgSWYgbm90IHRo
ZW4Kd2hvIGhvbyEgIExldCdzIG5vdCBhcHBseSBpdC4gIEJ1dCBpZiBpdCBoYXMgYmVlbiBjb21t
aXR0ZWQgdGhlbiBpdCBoYXMKYSBnaXQgaGFzaC4KCnJlZ2FyZHMsCmRhbiBjYXJwZW50ZXIKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkxpbnV4LW1lZGlh
dGVrIG1haWxpbmcgbGlzdApMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsK
