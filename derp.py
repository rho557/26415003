def main(i)
	
if __name__ == "__main__":
	main(sys.argv[1],sys.argv[2],sys.argv[3])

curl  -i -H "Accept: application/json" "http://infopangan.jakarta.go.id/api/price/series_by_commodity?public=1&cid=1&m=11&y=2016" | grep "Pasar Kalibaru"> latihan.txt
